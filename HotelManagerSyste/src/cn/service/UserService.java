package cn.service;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import cn.entity.Customer;


public interface UserService {
	
	
	//用户注册
		public int UserInage(@Param("cID")String cID,@Param("pwd")String pwd,@Param("cname")String cname,@Param("csex")String csex,@Param("zjtype")String zjtype,@Param("zjno")String zjno,@Param("ctel")String ctel);
		
		 /**
		  * 用户登入
		  * @param customer
		  * @return
		  * @throws Exception
		  */
		public Customer OneUser(String name,String password);
		
		//需改密码
				public int updateUser(String wpd,String cname,String ctel);

}
