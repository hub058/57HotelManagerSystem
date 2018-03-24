
package cn.control;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.entity.Account;
import cn.entity.Breakdown;
import cn.entity.Livein;
import cn.entity.Operator;
import cn.entity.Roominfo;
import cn.service.AcountService;
import cn.service.BreakdownService;
import cn.service.LiveinService;
import cn.service.OperatorService;
import cn.service.RoomInfoService;
import cn.service.Imp.OperatorSerciveImpl;
import cn.tools.Constants;
import cn.tools.PageSupport;

@Controller
public class AacountController {
	@Resource
	private AcountService acountService;
    @Resource
    private BreakdownService breakdownService;
    @Resource
    private RoomInfoService roomInfoService;
    @Resource
    private LiveinService liveinService;
    @Resource 
    private OperatorService operatorService;
	@RequestMapping(value="aacount.html")
	public String acount(HttpSession session,HttpServletRequest request,Model model,
			@RequestParam(value="queryuserID",required=false) String _userID, 
			@RequestParam(value="querychktime",required=false) Date _chktime, 
			@RequestParam(value="queryinno",required=false) String _inno, 
			@RequestParam(value="querychkID",required=false) String _chkID,
			@RequestParam(value="pageIndex",required=false) String pageIndex){
		
	List<Account> acountList=null;
	   Integer conuts=null;
	String userID=null;
	if (_userID!=null &&!_userID.equals("")){
		userID=_userID;
	}
	
	Date chktime=null;
	if (_chktime!=null &&!_chktime.equals("")){
		chktime=_chktime;
	}
	
	String inno=null;
	if (_inno!=null &&!_inno.equals("")){
		inno=_inno;
	}
	String chkID=null;
	if (_chkID!=null &&!_chkID.equals("")){
		chkID=_chkID;
	}
	//设置页面大小
    Integer pageSize=Constants.pageSize;
	Integer currentPageNo=1;
	if (pageIndex !=null) {
		currentPageNo=Integer.valueOf(pageIndex);
	}
	//总数
	Integer totalCount=0;
	try {
		totalCount=acountService.getCount(userID, chktime, inno, chkID);
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	PageSupport pages=new PageSupport();
	pages.setCurrentPageNo(currentPageNo);
	pages.setPageSize(pageSize);
	pages.setTotalCount(totalCount);
	//总页数
	 int totalPageCount=pages.getCurrentPageNo();
	 if (currentPageNo<0) {
		currentPageNo=1;
	}else if (currentPageNo>totalPageCount) {
		currentPageNo=totalPageCount;
	}
	 try {
		acountList=acountService.getacount(userID, chktime, inno, chkID, currentPageNo, pageSize);
	
	   conuts =acountService.getDateCount();
		
	 } catch (Exception e) {
		e.printStackTrace();
	}
	 model.addAttribute("acountList", acountList);
	 model.addAttribute("queryuserID",userID);
	 model.addAttribute("querychktime", chktime);
	 model.addAttribute("queryinno", inno);
	 model.addAttribute("querychkID", chkID);
	 model.addAttribute("pages",pages);
	 model.addAttribute("pageSize",pageSize);
	 model.addAttribute("currentPageNo",currentPageNo);
	 model.addAttribute("totalCount",totalCount);
	model.addAttribute("conuts", conuts);
       return	"queen/account";
	}
	
	//物价赔损
	@RequestMapping(value="break.html")
	public String breaks(Breakdown breakdown,HttpSession session,HttpServletRequest request,Model model){
		List<Breakdown> breakList=null;
		try {
			breakList=	breakdownService.getBreak(breakdown);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("breakdown", breakdown);
		 return	"queen/account";
	}
	
	
	//添加
	@RequestMapping(value="breakadd.html",method=RequestMethod.POST)
	public String addbreak(@ModelAttribute Account account,HttpSession session,HttpServletRequest request,Model model) throws Exception{
			
		if (acountService.accountAdd(account)) {
					model.addAttribute("account", account);
					return "redirect:/aacount.html";
				}

		return "queen/updateliveintype";
		}
	@RequestMapping(value="breakadds.html",method=RequestMethod.POST)
	public String addbreaks(@ModelAttribute Roominfo roominfo,HttpSession session,HttpServletRequest request,Model model) throws Exception{
		Integer modify=null;
		modify=	roomInfoService.getUpdates(roominfo);
	

		return "queen/updateliveintype";
		}
	@RequestMapping(value="breakaddss.html",method=RequestMethod.POST)
	public String addbreakss(@ModelAttribute Livein livein,HttpSession session,HttpServletRequest request,Model model) throws Exception{
		Integer modify=null;
		modify=	liveinService.updateLivein(livein);
	

		return "queen/updateliveintype";
		}
	
    //删除
	@RequestMapping(value="deleteAccount.html",method=RequestMethod.GET)
	@ResponseBody
	public String deleteAccount(@RequestParam("chkid")String chkid){
	 HashMap<String,String> resultMap = new HashMap<String, String>();
	 try {
			if (chkid==null&&chkid.equals("")) {
				resultMap.put("delResult", "false");
			}else{
			Integer count=acountService.deleteAccount(chkid);
			 if (count==null) {
				 resultMap.put("delResult", "false");
			}else{
				resultMap.put("delResult", "true");
			}
			
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return JSONArray.toJSONString(resultMap);
		
		
	}
	
	@RequestMapping(value = "/deletemore", method = RequestMethod.POST) 
	public String deleteMore(HttpServletRequest request, HttpServletResponse response) throws Exception { 
	String items = request.getParameter("delitems"); 
	String[] item = items.split(","); 
	for (int i = 0; i < item.length; i++) { 
		acountService.deleteAccount(item[i]);
	} 
	return "redirect:aacount.html"; 
	} 
	
     //跳转到修改页面
	@RequestMapping(value="updateAcount.html",method=RequestMethod.GET)
	public String updateAcount(@RequestParam String rchkID, String rinno,Model model){
		Account account=null;
		try {
	       account=acountService.getAcounts(rchkID);
	       
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		model.addAttribute("account", account);
		
		return "queen/updateAcount";
	}

	@RequestMapping(value="updateOper" ,method=RequestMethod.GET)
	public String updateoper(){
		
		return "queen/changepwd";
	}
	
	@RequestMapping(value="updateOperSave" ,method=RequestMethod.POST)
	public String updateopers(Model model,Operator operator,HttpServletRequest request) throws Exception{
		operatorService.updateOperator(operator);
		
		return "queen/account";
	}
}
