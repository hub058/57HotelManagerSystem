package cn.service.Imp;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.UserManage;
import cn.entity.Customer;
import cn.service.UserService;

@Service("userSercive")
public class UserSerciveImp implements UserService {

	@Autowired
	private UserManage userManage;
	
	//注册
	@Override
	public int UserInage(String cID, String pwd, String cname, String csex,
			String zjtype, String zjno, String ctel) {
		int i = userManage.UserInage(cID, pwd, cname, csex, zjtype, zjno, ctel);
		return i;
	}
	//登入
	@Override
	public Customer OneUser(String name, String password) {
		return  userManage.OneUser(name, password);
		
		
	}
	
	
	
	@Override
	public int updateUser(String wpd, String cname, String ctel) {
		// TODO Auto-generated method stub
		int i = userManage.updateUser(wpd, cname, ctel);
		
		return i;
	}
	

	

}
