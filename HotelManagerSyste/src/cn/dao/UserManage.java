package cn.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Customer;


public interface UserManage {
	//用户登入
	public Customer OneUser(@Param("name")String name,@Param("password")String password);
	
	//用户列表查询
	public List<String> UserList();
	
	//用户注册
	public int UserInage(@Param("cID")String cID,@Param("pwd")String pwd,@Param("cname")String cname,@Param("csex")String csex,@Param("zjtype")String zjtype,@Param("zjno")String zjno,@Param("ctel")String ctel);
	
	
	//密码修改
		public int updateUser(@Param("wpd")String wpd,@Param("cname")String cname,@Param("ctel")String ctel);
		
}
