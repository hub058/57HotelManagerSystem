package cn.service;


import java.util.List;

import cn.entity.Customer;


public interface CustomerService {
	
	
	    //前台用户注册
		public boolean UserInage(Customer customer) throws Exception;
		 //后台用户注册
		public boolean UserInages(Customer customer) throws Exception;
		//分页 查询
		public List<Customer> customerList(String cID,String ctel,Integer from,Integer pageSize)throws Exception;
		
		//总数
		public Integer countCustomer(String cID,String ctel)throws Exception;

        //验证
		public Customer selectcID(String cID)throws Exception;
        
		//修改
		public Integer updatecID(Customer customer)throws Exception;
		//删除
		public Integer deletecID(String cID) throws Exception;
}
