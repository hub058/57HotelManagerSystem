package cn.control;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Evaluate;
import cn.entity.Roominfo;
import cn.entity.Roomtype;
import cn.service.RoomLieService;
import cn.service.Imp.UserSerciveImp;
import cn.service.Imp.WeddingEvaluateServiceImp;
import cn.tools.Page;

@Controller
public class roomcontroller {
	private static String Url = "http://106.ihuyi.cn/webservice/sms.php?method=Submit";
	@Resource
	private UserSerciveImp userSerciveImp;
	@Resource
	private RoomLieService lieService;
	@Resource
	private WeddingEvaluateServiceImp imp;
	
	
	
	//分页ajax请求
	/*@RequestMapping("own")*/
	public String aal(Model model,HttpServletRequest request,String roomTypeID){
		String pageNow = request.getParameter("pageNow");  
		if (roomTypeID != null) {
			roomTypeID = "商务间";
		}
/*		 roomTypeID = request.getParameter("roomTypeID"); 
*/		if (roomTypeID ==null ||roomTypeID.equals(" ")) {
			roomTypeID ="";
		}
		Page page;
		int a=lieService.sumSelect();
		if (pageNow != null) {
			 page = new Page(a, Integer.valueOf(pageNow));
		}else {
			 page = new Page(a,1);
		}
		//总记录数
		//总页数
		int c = page.getStartPos();
		int q=page.getPageSize();
		List<Roominfo> list = lieService.RoomAal(c, q, roomTypeID );
		if (list != null) {
			model.addAttribute("AalRoom",list);
			model.addAttribute("page",page);
			return "Best Rooms";
		}
	
		
		return null;
	}
	//分页所有房间
	@RequestMapping("/ownRoom")
	public String RoomAal(Model model,HttpServletRequest request) {
		String pageNow = request.getParameter("pageNow");  
		String roomTypeID = request.getParameter("roomTypeID"); 
		if (roomTypeID ==null ||roomTypeID.equals(" ")) {
			roomTypeID ="";
		}
		Page page;
		int a=lieService.sumSelect();
		if (pageNow != null) {
			 page = new Page(a, Integer.valueOf(pageNow));
		}else {
			 page = new Page(a,1);
		}
		int c = page.getStartPos();
		int q=page.getPageSize();
		List<Roominfo> list = lieService.RoomAal(c, q, roomTypeID );
		if (list != null) {
			model.addAttribute("AalRoom",list);
			model.addAttribute("page",page);
			return "Best Rooms";
		}
		return "";
	}
	
	//房间细节
		@RequestMapping("/DetailRoomFunction")
		public String DetailRoom(int id,Model model) {
			int i=0;
			if (id == 0) {
				id=1;
			}else {
			//房间细节
			Roominfo detailRoom = lieService.DetailRoom(id);
					String roomID = detailRoom.getRoomID();
					 i = lieService.qvyuding(roomID);
					
			model.addAttribute("detail",detailRoom);
			}
			//最近房间
			List<Roominfo> list = lieService.roomRecently();
			model.addAttribute("recentlylist",list);
			//房间类型
			List<Roomtype> roomMold = lieService.RoomMold();
			model.addAttribute("roomMold", roomMold);
			if (i>0) {
				JOptionPane.showMessageDialog(null, "不好意思！这个房间已经被预定出去了");
			}
			return "Best Room Detail";
			
		}
		//最近房间
		@RequestMapping("/detail")
		public String  roomRecently(Model model) {
			List<Roominfo> list = lieService.roomRecently();
			model.addAttribute("recentlylist",list);
			return "Best Room Detail";
		}
		
		//按条件查询房间
		@RequestMapping("/referRoom")
		public String referRoom(String roomTypeID,String roomID) {
			int id=0;
			if ( (roomTypeID !="" &&  roomTypeID != null) && (roomID !="" &&  roomID != null)){
				Roominfo room = lieService.referRoom(roomTypeID, roomID);
				id=room.getId();
			}else {
				id=1;
			}
			return "redirect:/DetailRoomFunction?id="+id;
		}
		//去预定
		@RequestMapping("/goRoom")
		public String goRoom(Model model,String roomTypeID,String roomID,String id) {
			
			if ( (roomTypeID !="" &&  roomTypeID != null) && (roomID !="" &&  roomID != null)) {
				int i = lieService.qvyuding(roomID);
				if (i ==0) {
					model.addAttribute("lx",roomTypeID);
					model.addAttribute("fjh",roomID);
					return "redirect:/index?roomTypeID="+roomTypeID+"&roomID="+roomID;
				}
				JOptionPane.showMessageDialog(null, "不好意思！这个房间已经被预定出去了");
				return "redirect:/DetailRoomFunction?id="+id;
			}
			return "Best Room Detail";
		}
		//选择房间
		@RequestMapping("/goRoomMap")
		public String goRoomm(String map,Model model) {
			String roomTypeID=map;
			String roomID="";
			if (roomTypeID !="" &&  roomTypeID != null) {
				model.addAttribute("lx",roomTypeID);
				model.addAttribute("fjh",roomID);
				return "redirect:/index";
			}
			return "";
		}
		
		// 跳转关于我们
				@RequestMapping("/referral")
				public String roomReferral(Model model){
					return "About Us";
				}
		//短信验证
				@RequestMapping("noteVerify")
				@ResponseBody
				public String noteVerify(String queryParam){
					
					HttpClient client = new HttpClient(); 
					PostMethod method = new PostMethod(Url);

					client.getParams().setContentCharset("GBK");
					method.setRequestHeader("ContentType","application/x-www-form-urlencoded;charset=GBK");

					int mobile_code = (int)((Math.random()*9+1)*100000);
					System.out.println(mobile_code);
				    String content = new String("您的验证码是：" + mobile_code + "。请不要把验证码泄露给其他人。");
					NameValuePair[] data = {//提交短信
						    new NameValuePair("account", "C75304016"), //查看用户名是登录用户中心->验证码短信->产品总览->APIID
						    new NameValuePair("password", "0306677c763ea91bea4c40c740c36212"),  //查看密码请登录用户中心->验证码短信->产品总览->APIKEY
						    //new NameValuePair("password", util.StringUtil.MD5Encode("密码")),
						    new NameValuePair("mobile", queryParam), 
						    new NameValuePair("content", content),
					};
					method.setRequestBody(data);

					try {
						client.executeMethod(method);
						
						String SubmitResult =method.getResponseBodyAsString();

						//System.out.println(SubmitResult);

						Document doc = DocumentHelper.parseText(SubmitResult);
						Element root = doc.getRootElement();

						String code = root.elementText("code");
						String msg = root.elementText("msg");
						String smsid = root.elementText("smsid");

						System.out.println(code);
						System.out.println(msg);
						System.out.println(smsid);

						 if("2".equals(code)){
							System.out.println("短信提交成功");
						}

					} catch (HttpException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (DocumentException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return String.valueOf(mobile_code);
				}
}
