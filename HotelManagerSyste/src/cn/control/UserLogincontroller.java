package cn.control;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;


import cn.entity.Customer;
import cn.entity.Livein;
import cn.entity.Operator;
import cn.entity.Roominfo;
import cn.entity.Roomtype;
import cn.service.LiveinService;
import cn.service.OperatorService;
import cn.service.RoomInfoService;
import cn.service.RoomTypeService;
import cn.tools.Constants;
import cn.tools.PageSupport;

@Controller

public class UserLogincontroller {
	 
	@Resource
	private OperatorService operatorService;
	@Resource
	private RoomInfoService roomInfoService;
	@Resource
	private RoomTypeService roomTypeService;
	@Resource LiveinService liveinService;
	/**
	 * 跳转到后台登陆界面
	 * @return
	 */
	@RequestMapping(value="/userlogin.html",method=RequestMethod.GET)
	public String login(){
		
		return "page/login";
		
	}
	/**
	 * 首页引用头部
	 * @return
	 */
	@RequestMapping(value="/head.html",method=RequestMethod.GET)
	public String head(){
		return "queen/head";
	}
	/**
	 * 首页引用左边
	 * @return
	 */
	@RequestMapping(value="/left.html",method=RequestMethod.GET)
	public String left(){
		return "queen/left";
	}
	
	
    //登陆
	@RequestMapping(value="/loginuser.html",method=RequestMethod.POST)
	public String loginUser(@RequestParam String userID,
			                @RequestParam String pwd,
			                HttpSession session,
			                HttpServletRequest request) throws Exception{
		Operator operator=operatorService.Loginuser(userID, pwd);
		  if (operator !=null) {
			session.setAttribute(Constants.USER_SESSION, operator);
			return "queen/index";
		}else {
			request.setAttribute("error","账号或密码错误,请核对！");
			return "page/login";
		}
		  
	}
	
 	@RequestMapping(value="/main.html")
 	public String getRoomList(Model model,HttpSession session,
 			@RequestParam(value="queryroomID",required=false) String _roomID,
 			@RequestParam(value="queryroomState",required=false) String _roomState ,
 			@RequestParam(value="queryroomTypeID",required=false) String _roomTypeID,
 			@RequestParam(value="pageIndex",required=false) String pageIndex){
 	
 		Roominfo roominfo =(Roominfo) session.getAttribute(Constants.ROOM_USER_SESSION);
 		Roomtype roomtype =(Roomtype) session.getAttribute(Constants.ROOMTYPE_SESSION);
 	 List<Roominfo> userList=null;
 	 List<Roomtype> typeList=null;
 	String roomID=null;
 	if (_roomID !=null && !_roomID.equals("")) {
 		roomID=_roomID;
 	}
 	String roomState=null;
 	if (_roomState !=null && !_roomState.equals("")) {
 		roomState=_roomState;
 	}
 	String roomTypeID=null;
 	if (_roomTypeID !=null && !_roomTypeID.equals("")) {
 		roomTypeID=_roomTypeID;
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
 		totalCount=roomInfoService.count(roomID, roomState, roomTypeID);
 	
 	
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
 			userList=roomInfoService.getRoomList(roomID, roomState, roomTypeID, currentPageNo, pageSize);
		    typeList=roomTypeService.getroomType(roomTypeID);
		   
 		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
 	model.addAttribute("userList", userList);
 	model.addAttribute("typeList", typeList);
 	model.addAttribute("queryroomID", roomID);
 	model.addAttribute("queryroomState", roomState);
 	model.addAttribute("queryroomTypeID", roomTypeID);
 	model.addAttribute("pages", pages);
 	model.addAttribute("totalPageCount", totalPageCount);
 	model.addAttribute("totalCount", totalCount);
 	model.addAttribute("currentPageNo", currentPageNo);
 	
 				return "queen/main";
 				
 	}
 	
 	 // 跳转到修改房间信息页面
 	@RequestMapping(value="/update.html",method=RequestMethod.GET)
	public String addUser(@RequestParam String rid,Model model,HttpSession session,Roominfo roominfo){
		 try {
			 session.setAttribute(Constants.ROOM_USER_SESSION,roominfo);
			 roominfo=roomInfoService.getRoomID(Integer.parseInt(rid));
		     model.addAttribute(roominfo);
		 } catch (Exception e) {
			
			e.printStackTrace();
		}
		return "/queen/updateRoom";
		
	}
     // 修改房间信息
 	@RequestMapping(value="/updateroom.html",method=RequestMethod.POST)
 	public String updateRoom(@ModelAttribute Roominfo roominfo,HttpSession session,HttpServletRequest request,Model model) throws Exception{
 	
 		
 		roominfo.setId(roominfo.getId());
 		Integer modify=null;
 		modify=roomInfoService.getUpdate(roominfo);

 		if (modify!=null) {
 			
			return "redirect:/main.html";
 		}
 		request.setAttribute("massage2", "修改失败！！");
 		return "update.html";
 		
 	}
 	//删除房间
 	@RequestMapping(value="/deleteroom.json",method=RequestMethod.GET)
	@ResponseBody
 	public String deleteRoom(@RequestParam("id") String id){
		HashMap<String, String> resultMap=new HashMap<String, String>();
		
		try {
			if (id==null&&id.equals("")) {
				resultMap.put("delResult", "false");
			}else{
			Integer count=	roomInfoService.deleteRoom(Integer.parseInt(id));
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
 
 	 //跳转到新增页面
 	@RequestMapping(value="/roomadd.html",method=RequestMethod.GET)
 	public String addroom(@ModelAttribute("roominfo") Roominfo roominfo,Model model){
 		List<Roomtype> typeList=null;	
 		String roomTypeID=null;
 	 	
 		try {
			typeList= roomTypeService.getroomType(roomTypeID);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
 		model.addAttribute("typeList", typeList);
		return "queen/roomadd";
 		
 	}
 	//新增成功
   @RequestMapping(value="roomaddSave.html",method=RequestMethod.POST)
    public String addroomSave(Roominfo roominfo,HttpSession session,HttpServletRequest request) throws Exception{

	if (roomInfoService.addroom(roominfo)) {
	   return "redirect:/main.html";
      }
	   return "roomadd.html";
	   
	   
   }
   
   //foreach
   @RequestMapping(value="roominfoLivein.html",method=RequestMethod.GET)
   public String liveinroom(HttpSession session,Model model) throws Exception{
	
	   List<Roominfo> roominfoList=null;
	   List<Roominfo> roominfoList1=null;
	   List<Roominfo> roominfoList2=null;
	   List<Roominfo> roominfoList3=null;
	   List<Roominfo> roominfoList4=null;
	   List<Roominfo> roominfoList5=null;
	   List<Roominfo> roominfoList6=null;
	   List<Roominfo> roominfoList7=null;
	   List<Roominfo> roominfoList8=null;
	   roominfoList=roomInfoService.roomsList("干净的空房","1");
	     roominfoList1=roomInfoService.roomsList("干净的空房","2");
	     roominfoList2=roomInfoService.roomsList("干净的空房","3");
	     roominfoList3=roomInfoService.roomsList("干净的空房","4");
	     roominfoList4=roomInfoService.roomsList("干净的空房","5");
	     roominfoList5=roomInfoService.roomsList("干净的空房","6");
	     roominfoList6=roomInfoService.roomsList("干净的空房","7");
	     roominfoList7=roomInfoService.roomsList("干净的空房","8");

       model.addAttribute("roominfoList",roominfoList );
       model.addAttribute("roominfoList1",roominfoList1 );
       model.addAttribute("roominfoList2",roominfoList2 );
       model.addAttribute("roominfoList3",roominfoList3 );
       model.addAttribute("roominfoList4",roominfoList4 );
       model.addAttribute("roominfoList5",roominfoList5 );
       model.addAttribute("roominfoList6",roominfoList6 );
       model.addAttribute("roominfoList7",roominfoList7 );
       
	   return "queen/roominfoLivein";
	   
	   
   }
}
