package cn.control;

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

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;

import cn.entity.Breakdown;
import cn.entity.Customer;
import cn.entity.Livein;
import cn.entity.Roominfo;
import cn.service.BreakdownService;
import cn.service.CustomerService;
import cn.service.LiveinService;
import cn.service.RoomInfoService;
import cn.tools.BaseController;
import cn.tools.Constants;
import cn.tools.Numberorder;
import cn.tools.PageSupport;

@Controller
public class LivienController extends BaseController {
@Resource
private LiveinService liveinService;
@Resource
private RoomInfoService roomInfoService;
@Resource
private   CustomerService customerSercive;
@Resource
private BreakdownService breakdownService;
     /*
	 * 跳到注册页面
	 */
	@RequestMapping(value="/livein.html")
	public String liveinPage(Model model,HttpSession session,
			              @RequestParam(value="queryinno",required=false) String _inno,
			              @RequestParam(value="queryroomID",required=false) String _roomID,
			              @RequestParam(value="querycID",required=false) String _cID,
			              @RequestParam(value="pageIndex",required=false) String pageIndex){
  Livein livein=(Livein) session.getAttribute(Constants.LIVEIN_SESSION);
		List<Livein> liveinList=null;
		
		 String inno=null;
		if (_inno !=null && !_inno.equals("")) {
			inno=_inno;
		}
		String roomID=null;
		if (_roomID !=null && !_roomID.equals("")) {
			roomID=_roomID;
		}
	
		String cID=null;
	 	if (_cID !=null && !_cID.equals("")) {
	 		cID=_cID;
	 	}
		//设置页面容量
	 	int pageSize=Constants.pageSize;
	 	//当前页码
	 	int currentPageNo=1;
	 	if (pageIndex !=null) {
	 		currentPageNo=Integer.valueOf(pageIndex);	
	 	}
	 	
	 	//总数量
	 	Integer totalCount=0;
	 	try {
	 		totalCount=liveinService.getCount("1",inno, roomID, cID);
	 	
	 	
	 	} catch (Exception e) {
	 		e.printStackTrace();
	 	}
	 	PageSupport pages=new PageSupport();
	 	pages.setCurrentPageNo(currentPageNo);
	 	pages.setPageSize(pageSize);
	 	pages.setTotalCount(totalCount);
	 	 int totalPageCount=pages.getTotalPageCount();
	 	 //控制首页和尾页
	 	 if (currentPageNo<1) {
	 		currentPageNo=1;
	 	}else if (currentPageNo>totalPageCount) {
	 		currentPageNo=totalPageCount;
	 	}
	 	 
		try {
			liveinList=liveinService.getLiveinList("1",inno, roomID, cID, currentPageNo, pageSize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("liveinList", liveinList);
		model.addAttribute("queryinno", inno);
		model.addAttribute("queryroomID", roomID);
		model.addAttribute("querycID", cID);
		model.addAttribute("pages", pages);
		model.addAttribute("currentPageNo", currentPageNo);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalCount", totalCount);
		return "queen/livein";
		
	}
	   /*
		 * 跳到注册页面
		 */
		@RequestMapping(value="/livein1.html")
		public String liveinPages(Model model,HttpSession session,
				              @RequestParam(value="queryinno",required=false) String _inno,
				              @RequestParam(value="queryroomID",required=false) String _roomID,
				              @RequestParam(value="querycID",required=false) String _cID,
				              @RequestParam(value="pageIndex",required=false) String pageIndex){
	  Livein livein=(Livein) session.getAttribute(Constants.LIVEIN_SESSION);
			List<Livein> liveinList=null;
			
			 String inno=null;
			if (_inno !=null && !_inno.equals("")) {
				inno=_inno;
			}
			String roomID=null;
			if (_roomID !=null && !_roomID.equals("")) {
				roomID=_roomID;
			}
		
			String cID=null;
		 	if (_cID !=null && !_cID.equals("")) {
		 		cID=_cID;
		 	}
			//设置页面容量
		 	int pageSize=Constants.pageSize;
		 	//当前页码
		 	int currentPageNo=1;
		 	if (pageIndex !=null) {
		 		currentPageNo=Integer.valueOf(pageIndex);	
		 	}
		 	
		 	//总数量
		 	Integer totalCount=0;
		 	try {
		 		totalCount=liveinService.getCount("2",inno, roomID, cID);
		 	
		 	
		 	} catch (Exception e) {
		 		e.printStackTrace();
		 	}
		 	PageSupport pages=new PageSupport();
		 	pages.setCurrentPageNo(currentPageNo);
		 	pages.setPageSize(pageSize);
		 	pages.setTotalCount(totalCount);
		 	 int totalPageCount=pages.getTotalPageCount();
		 	 //控制首页和尾页
		 	 if (currentPageNo<1) {
		 		currentPageNo=1;
		 	}else if (currentPageNo>totalPageCount) {
		 		currentPageNo=totalPageCount;
		 	}
		 	 
			try {
				liveinList=liveinService.getLiveinList("2",inno, roomID, cID, currentPageNo, pageSize);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			model.addAttribute("liveinList", liveinList);
			model.addAttribute("queryinno", inno);
			model.addAttribute("queryroomID", roomID);
			model.addAttribute("querycID", cID);
			model.addAttribute("pages", pages);
			model.addAttribute("currentPageNo", currentPageNo);
			model.addAttribute("pageSize", pageSize);
			model.addAttribute("totalCount", totalCount);
			return "queen/livein1";
			
		}
	
	//查看详情
 	@RequestMapping(value="/view.html",method=RequestMethod.GET)
	@ResponseBody
	public Livein selRoom(@RequestParam String uid){
 		Livein livein=new Livein();
			try {
				livein=liveinService.Loginuser(Integer.parseInt(uid));
			} catch (Exception e) {
			
				e.printStackTrace();
			}
		
		return livein;
 		
 	}
 	//跳转到新增订单页面
 	@RequestMapping(value="liveinadd.html",method=RequestMethod.GET)
 	public String liveinadd(@ModelAttribute("livein") Livein livein,Model model,String rid) throws Exception{
 		Numberorder num=new Numberorder();
 		String innos=null;
 	   innos=num.getOrderNo();
 	   livein.setInno(innos);
       String r =rid.substring(26);
       Roominfo info= roomInfoService.getroominfo(r);
       Roominfo infos=roomInfoService.roomPric(r);
       model.addAttribute("info", info);
       model.addAttribute("infos", infos);
 	   model.addAttribute("num", num);
 	   model.addAttribute("innos", innos);
 	   model.addAttribute("livein", livein);
		return "queen/liveinadd";
 	}
 	//添加订单1
 	 @RequestMapping(value="liveinaddSave.html",method=RequestMethod.POST)
 	public String liveinaddSave(Livein livein,HttpSession session,HttpServletRequest request,Model model) throws Exception{
		 
 		 if (liveinService.liveinAdd(livein)) {
 			
			model.addAttribute("livein", livein);
			return "queen/succeed";
		}
 		return "liveinadd.html";
	
 	}
 	 
 	//修改入住状态
 	 @RequestMapping(value="liveinaddSaves.html",method=RequestMethod.POST)
 	public String liveinaddSaves(@ModelAttribute Roominfo info, HttpSession session,HttpServletRequest request,Model model) throws Exception{
	
		Integer modify=null;
		modify= roomInfoService.getUpdate(info);
		 
 		return "queen/succeed";
	
 	}
 	 //验证客户账号是否存在
 	 @RequestMapping("Exview")
 	 @ResponseBody
 	 public Object getRoomId(@RequestParam String cID) throws Exception{
 	HashMap<String,Object> resultMap = new HashMap<String, Object>();
 	        if (StringUtils.isNullOrEmpty(cID)) {
 	        	resultMap.put("cID", "exists"); //用户名已经存在
	}
 	Customer customer=customerSercive.selectcID(cID);
 		 if (customer==null) {
 			resultMap.put("cID", "noexist"); //用户名已经存在
		}else {
			resultMap.put("cID", "exist"); //用户名已经存在
		}
		return JSONArray.toJSON(resultMap);
 		
 	 }
 	 
 	 
 	//跳转到修改页面
 	 @RequestMapping(value="updateLivein.html",method=RequestMethod.GET)
 	 public String liveinUpdate(String rinno,HttpSession session,Model model,Livein livein) throws Exception{
 		   
 	     livein=liveinService.LiveinGet(rinno);
 		 model.addAttribute("livein", livein);
		return "queen/updatelivein";
 	
 	 }
 	 //保存修改
 	 @RequestMapping(value="updateLiveinSave.html",method=RequestMethod.POST)
 	 public String liveUpdateSave(@ModelAttribute Livein livein, HttpSession session,HttpServletRequest request) throws Exception{
	     livein.setInno(livein.getInno());
	     Integer modify=null;
	  modify=liveinService.updateLivein(livein);
	     if (modify != null) {
			return "redirect:/livein.html";
		}
	     request.setAttribute("massage2", "修改失败！！");
 		  return "updateLivein.html";
 		  
 	 }
 	 /**
 	  * 删除
 	  * @param id
 	  * @return
 	  */
 	@RequestMapping(value="deleteLivein.html",method=RequestMethod.GET)
 	@ResponseBody
    public String deleteLive(@RequestParam("id") String id){
	HashMap<String, String> resultMap=new HashMap<String, String>();
	try {
		if (id==null&&id.equals("")) {
			resultMap.put("delResult", "false");
		}else{
		Integer count=	liveinService.deleteId(Integer.parseInt(id));
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
 	 
 	@RequestMapping(value = "/deletemoress", method = RequestMethod.POST) 
	public String deleteMore(HttpServletRequest request, HttpServletResponse response) throws Exception { 
	String items = request.getParameter("delitems"); 
	String[] item = items.split(","); 
	for (int i = 0; i < item.length; i++) { 
		liveinService.deleteId(Integer.parseInt(item[i]));
	} 
	return "redirect:aacount.html"; 
	} 
	
 	//跳转到修改页面
 	 @RequestMapping(value="succeed.html")
 	 public String succeed() {
 		   
 	     
		return "queen/succeed";
 	
 	 }
 	//跳转到修改房间状态以及结算
 	 @RequestMapping(value="leveintype.html",method=RequestMethod.GET)
 	 public String leveintype(String rid, Breakdown breakdown,HttpSession session,HttpServletRequest request,Model model) {
 		 Livein livein = null;
 		Numberorder num=new Numberorder();
 		String chkid=null;
 	    chkid=num.getOrderNo();
 		 try {
			livein=liveinService.LiveinGet(rid);
		} catch (Exception e1) {
			
			e1.printStackTrace();
		}
 		
 		List<Breakdown> breakList=null;
		try {
			breakList=breakdownService.getBreak(breakdown);
		} catch (Exception e) {
			e.printStackTrace();
		}
		 model.addAttribute("chkid", chkid);
		 model.addAttribute("breakList", breakList);
		 model.addAttribute("livein", livein);
		return "queen/updateliveintype";
 	
 	 }
 	  
 	
}
