package cn.control;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.jms.Session;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.sun.net.httpserver.HttpServer;

import cn.entity.Customer;
import cn.entity.Engage;
import cn.entity.Evaluate;
import cn.entity.Operator;
import cn.entity.Roominfo;
import cn.entity.Roomtype;
import cn.service.OperatorService;
import cn.service.RoomLieService;
import cn.service.UserService;
import cn.service.Imp.WeddingEvaluateServiceImp;
import cn.tools.Constants;

@Controller
public class controller {

	@Resource
	private UserService userSercive;
	@Resource
	private RoomLieService lieService;
	@Resource
	private WeddingEvaluateServiceImp imp;
	@Resource
	private OperatorService operatorService;

	private controller controller;

	// 跳转登入页面
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	//退出
	@RequestMapping("/tuichu")
	public String tuic(HttpSession session ){
		Object attribute = session.getAttribute("userSession");
		if (attribute != null) {
			session.removeAttribute("userSession");
		}
		
		return "login";
	}
	
	//退出
		@RequestMapping(value="tuichus")
		public String tuics(HttpSession session ){
			Object attribute = session.getAttribute("userSess");
			if (attribute != null) {
				session.removeAttribute("userSess");
			}
			
			return "login";
		}
	//404跳转
	@RequestMapping("/mko")
	public String mko(){
		return "error";
	}
	
	// 登录
	@RequestMapping("/loginUser")
	public String loginUser(HttpSession session,
			@RequestParam("name") String name,
			@RequestParam("password") String password, Model model) {
		try {
			//前台登入
			Customer oneUser = userSercive.OneUser(name, password);
			
			//后台登入
			Operator operator = operatorService.Loginuser(name, password);
			
			if (oneUser != null) {
				session.setAttribute("userSess", oneUser);
				return "redirect:/index";
			}
			
			if (operator != null) {
				session.setAttribute(Constants.USER_SESSION, operator);
				return "queen/index";
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*  
		if (oneUser != null) {
			int delmark = Integer.valueOf(oneUser.getDelmark());
			if (delmark <= 1) {
				session.setAttribute("userSession", oneUser);
				return "redirect:/index";
			}else {
				session.setAttribute(Constants.USER_SESSION, oneUser);
				return "queen/index";
			}
		}*/
		JOptionPane.showMessageDialog(null, "不好意思！账号或密码错误");
		return "login";
	}

	// 预定
	@RequestMapping(value = "/obleRoom", method = RequestMethod.POST)
	public String reserve(HttpSession session,
			@RequestParam("cname") String cname,
			@RequestParam("ctels") String ctels,
			@RequestParam("roomID") String roomID,
			@RequestParam("intime") Date intime,
			@RequestParam("demand") String  demand,
			@RequestParam("leavetime") Date leavetime,
			@RequestParam("foregift") String foregift, Model model) {
		String cID = null;
		if (session.getAttribute("userSession") != null) {
			Customer attribute = (Customer) session.getAttribute("userSession");
			cID = attribute.getcID();
		}
		int i = lieService.RoomOrder(cID, cname, ctels, roomID, intime, demand,
				leavetime, foregift);
		if (i != 0) {
			lieService.alterRoom(roomID);
			
			JOptionPane.showMessageDialog(null, "预定成功");
		}
		return "redirect:/index";
	}

	// 查询所有房间类型
	@RequestMapping("/index")
	public String RoomModl(Model model,String roomTypeID,String roomID) {
		if ( (roomTypeID !="" &&  roomTypeID != null) || (roomID !="" &&  roomID != null)) {
			model.addAttribute("lx",roomTypeID);
			model.addAttribute("fjh",roomID);
		}
		// 查询所有房间类型
		List<Roomtype> roomMold = lieService.RoomMold();
		model.addAttribute("roomMold", roomMold);
		// 推荐房间
		List<Roominfo> list = lieService.limitRoom();
		model.addAttribute("limit", list);
		//所有评价
		List<Evaluate> list2 = imp.selectEvaluate();
		model.addAttribute("listEvaluate",list2);
		//推荐房间
		List<Roominfo> list1 = lieService.limitRoom();
		model.addAttribute("limit", list1);
		Calendar now = Calendar.getInstance();
		model.addAttribute("nian",now.get(Calendar.YEAR));
		model.addAttribute("yue", (now.get(Calendar.MONTH) + 1));
		model.addAttribute("ri", now.get(Calendar.DAY_OF_MONTH));
		
		return "index";
	}

	// ajax空房
	@RequestMapping(value = "skyRoom", method = RequestMethod.GET)
	@ResponseBody
	public Object RentRoom(@RequestParam("pid") String roomTypeId) {
		if (roomTypeId == null || roomTypeId == " ") {
			System.out.println(roomTypeId + "为空");
		}
		List<Roominfo> list = lieService.RentRoom(roomTypeId);
		return JSONArray.toJSONString(list);
	}

	// ajax房价
	@RequestMapping(value = "yjRoom", method = RequestMethod.GET)
	@ResponseBody
	public Object RentGole(@RequestParam("pid") String roomTypeId) {
		Roominfo roomlx = lieService.Roomlx(roomTypeId);
		String id = roomlx.getRoomTypeID();
		Roomtype roomGole = lieService.roomGole(id);
		return JSONArray.toJSONString(roomGole.getRoomPrice());
		
	}
	//跳修改
	@RequestMapping("/pwd")
	public String pwd(){
		return "pwd";
	}
	//修改密码
	@RequestMapping("/updateUser")
	public String UpdateUser(String cname, String ctel, String pwd){
		int i = userSercive.updateUser(pwd, cname, ctel);
		if (i >0) {
			JOptionPane.showMessageDialog(null, "修改成功");

		}
		return "redirect:/login";
	}
	
}
