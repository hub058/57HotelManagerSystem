
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

import cn.entity.Customer;
import cn.entity.Customertype;
import cn.service.CustomerService;
import cn.service.CustomerTypeService;
import cn.service.RoomLieService;
import cn.tools.Constants;
import cn.tools.PageSupport;

import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;


@RequestMapping("/user")
@Controller
public class CustomerController {
	 
	@Resource
	private CustomerService customerSercive;
	@Resource
	private RoomLieService lieService;
	@Resource
	private CustomerTypeService customerTypeSercive;

	/*
	 * 跳到注册页面
	 */
	@RequestMapping(value="/useradd.html",method=RequestMethod.GET)
	public String addUser(@ModelAttribute("customer") Customer customer){
		
		return "zhuce";
		
	}
	/**
	 * 新增用户成功后自动进入登陆页面
	 * @param customer
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="useraddsave.html",method=RequestMethod.POST)
	public String addUsersave( Customer customer, HttpSession session) throws Exception{
		if(customerSercive.UserInage(customer) ){
			return "redirect:/page/userlogin.html";
		}
		return "useradd.html";
		
	}
	/**
	 * 跳转会员页面
	 * @param customer
	 * @return
	 */
	@RequestMapping(value="getCustomer.html")
	public String customerList(Model model,HttpSession session,
			@RequestParam(value="querycID",required=false) String _cID,
			@RequestParam(value="queryctel",required=false) String _ctel,
			@RequestParam(value="pageIndex",required=false) String pageIndex){
		
		
		List<Customer> custList=null;
		
		String cID=null;
		if (_cID!=null && !_cID.equals("")) {
			cID=_cID;
		}
		String ctel=null;
		if (_ctel!=null && !_ctel.equals("")) {
			ctel=_ctel;	
		}
		//设置页面大小
		int pageSize=Constants.pageSize;
		
		//当前页码 
		Integer currentPageNo=1;
		if (pageIndex!=null) {
			currentPageNo=Integer.valueOf(pageIndex);
		}
		//总数量
		Integer totalCount=0;
		
		try {
		totalCount=	customerSercive.countCustomer(cID,ctel);
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		//控制尾页和首页
		PageSupport pages=new PageSupport();
		pages.setCurrentPageNo(currentPageNo);
		pages.setPageSize(pageSize);
		pages.setTotalCount(totalCount);

        //总页数
		int totalPageCount=pages.getCurrentPageNo();
		if (currentPageNo<1) {
			currentPageNo=1;
		}else if(currentPageNo>totalPageCount) {
			currentPageNo=totalPageCount;
		}
		
		try {
			custList=customerSercive.customerList(cID,ctel, currentPageNo, pageSize);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("custList",custList);
		model.addAttribute("querycID", cID);
		model.addAttribute("queryctel", ctel);
		model.addAttribute("pages",pages );
		model.addAttribute("currentPageNo",currentPageNo );
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totalCount",totalCount );
		return "queen/customer";
		
	}
	/**
	 * 跳转到新增页面
	 * @param customer
	 * @return
	 */
	@RequestMapping(value="/addcustomer.html",method=RequestMethod.GET)
	public String addcustomer(@ModelAttribute("customer") Customer customer,Model model){
		 List<Customertype> custList=null;
		String customerID=null;
		try {
			custList=customerTypeSercive.getType(customerID);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("custList", custList);
		return "queen/customeradd";
		
	}
	
	//异步校验用户编码是否可以使用
		@RequestMapping("/ucExist.html")
		@ResponseBody	//@ResponseBody 返回的是JSON对象而不是逻辑视图名了
		public Object ucExist(@RequestParam String cID) throws Exception {	//cID传递的参数-用户编码
			HashMap<String,Object> resultMap = new HashMap<String,Object>();
			
			if(StringUtils.isNullOrEmpty(cID)){
				//用户名已经存在
				resultMap.put("cID", "exists");
			}else{
				Customer customer= customerSercive.selectcID(cID);
				if(customer == null){
					resultMap.put("cID", "noexist");
				}else {
					resultMap.put("cID", "exist");
				}
			}
			return JSONArray.toJSONString(resultMap);
		}
	/**
	 * 后台用户注册
	 * @param customer
	 * @param session
	 * @return
	 * @throws Exception
	 */
		@RequestMapping(value="addcustomersave.html",method=RequestMethod.POST)
		public String addcustomersave( Customer customer, HttpSession session) throws Exception{
			if(customerSercive.UserInages(customer) ){
				return "redirect:/user/getCustomer.html";
			}
			return "useradd.html";
			
		}
		/**
		 * 调到会员修改页面
		 * @param customer
		 * @param rcID
		 * @param model
		 * @return
		 */
  @RequestMapping(value="/updatecustomer.html",method=RequestMethod.GET)
  public String updateCuster(Customer customer,String rcID,Model model){
	    List<Customertype> custList=null;
	    String customerID=null;
	  try {
			customer=customerSercive.selectcID(rcID);
			custList=customerTypeSercive.getType(customerID);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	  model.addAttribute("customer", customer);
	  model.addAttribute("custList", custList);
	  return "queen/updateCustomer";
  }	
		/**
		 * 实现修改
		 */
  @RequestMapping(value="/updatecustomersave.html",method=RequestMethod.POST)
  public String updateCusterSave(Customer customer, HttpSession session) throws Exception{
	         Integer modify=null;
	        modify=customerSercive.updatecID(customer);
	        if (modify!=null) {
				return "redirect:/user/getCustomer.html";
			}
	         
	  return "queen/updateCustomer";  
  }
  /**
   * 删除
   * @param cID
   * @return
   */
   @RequestMapping(value="deleteCustomer.html",method=RequestMethod.GET)
   @ResponseBody
   public String deleteCustomer(@RequestParam("cID")String cID){
	            HashMap<String,String> resultMap = new HashMap<String, String>();
	            try { 
	            if (cID==null&&cID.equals("")) {
					resultMap.put("delResult", "false");
				}
				Integer count=	customerSercive.deletecID(cID);
					if (count==null) {
						resultMap.put("delResult", "false");
					}else {
						resultMap.put("delResult", "true");
					}
				} catch (Exception e) {
					
					e.printStackTrace();
				}
	   
	   return JSONArray.toJSONString(resultMap);
   }
   
   @RequestMapping(value = "/deletemorecou", method = RequestMethod.POST) 
	public String deleteMore(HttpServletRequest request, HttpServletResponse response) throws Exception { 
	String items = request.getParameter("delitems"); 
	String[] item = items.split(","); 
	for (int i = 0; i < item.length; i++) { 
		customerSercive.deletecID(item[i]);
	} 
	return "redirect:getCustomer.html"; 
	} 
	
	/**
	 * 跳到登陆页面
	 * @param customer
	 * @return
	 */
	@RequestMapping(value="/userlogin.html",method=RequestMethod.GET)
	public String login(@ModelAttribute("customer") Customer customer){
	
		return "page/login";
		
	}
	
	
}
