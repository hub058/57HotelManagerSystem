package cn.control;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.entity.Engage;
import cn.service.EngageService;
import cn.tools.Constants;
import cn.tools.PageSupport;

@Controller
public class EngageController {
  
	@Resource
	private EngageService engageService;
	
	@RequestMapping(value="engage.html")
	public String getEngage(HttpSession session,Model model,
			@RequestParam(value="querycID",required=false) String _cID,
			@RequestParam(value="queryctels",required=false) String _ctels,
			@RequestParam(value="pageIndex",required=false) String pageIndex){
				
		List<Engage> listEngage=null;
		
		String cID=null;
		if (_cID != null&& _cID !="") {
			cID=_cID;
		}
		String ctels=null;
		if (_ctels!=null && _ctels!="") {
			ctels=_ctels;
		}
		//设置页面大小
	 int pageSize=Constants.pageSize;
	  //设置当前页码
	 int currentPageNo=1;
	 if (pageIndex!=null) {
		 currentPageNo=Integer.valueOf(pageIndex);
	}
     //总量
	 Integer totalCount=0;
	 try {
		totalCount=engageService.engageCount(cID, ctels);
	} catch (Exception e) {
		e.printStackTrace();
	}
	  //控制首页尾页
	 PageSupport pages=new PageSupport();
	 pages.setCurrentPageNo(currentPageNo);
	 pages.setPageSize(pageSize);
	 pages.setTotalCount(totalCount);
	 //读取总页数
	 int totalPageCount=pages.getTotalPageCount();
	 if (currentPageNo<0) {
		 currentPageNo=1;
	}else if (currentPageNo>totalPageCount) {
		currentPageNo=totalPageCount;
		
	}
	 try {
		listEngage=engageService.getListEngage(cID, ctels, currentPageNo, pageSize);
	} catch (Exception e) {
		e.printStackTrace();
	}
	 model.addAttribute("listEngage",listEngage);
	 model.addAttribute("querycID",cID);
	 model.addAttribute("queryctels",ctels);
	 model.addAttribute("pages",pages );
	 model.addAttribute("pageSize",pageSize );
	 model.addAttribute("currentPageNo", currentPageNo);
	 model.addAttribute("totalCount",totalCount );
		return "queen/engage";
		
	}
	//批量删除
	@RequestMapping(value = "/deletemores", method = RequestMethod.POST) 
	public String deleteMore(HttpServletRequest request, HttpServletResponse response) throws Exception { 
	String items = request.getParameter("delitems"); 
	String[] item = items.split(","); 
	for (int i = 0; i < item.length; i++) { 
		engageService.deleteEngage(item[i]);
	} 
	return "redirect:engage.html"; 
	} 
	 //删除
		@RequestMapping(value="deleteEngage.html",method=RequestMethod.GET)
		@ResponseBody
		public String deleteAccount(@RequestParam("roomid")String roomid){
		 HashMap<String,String> resultMap = new HashMap<String, String>();
		 try {
				if (roomid==null&&roomid.equals("")) {
					resultMap.put("delResult", "false");
				}else{
				Integer count=engageService.deleteEngage(roomid);
				
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
}