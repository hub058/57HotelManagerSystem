package cn.service;

import java.util.Date;
import java.util.List;
import cn.entity.Account;

public interface AcountService {
    //分页查询
	public List<Account> getacount(String userID, Date chktime, String inno, String chkID, Integer from,Integer pageSize)throws Exception;

	//总数
	public Integer getCount(String userID, Date chktime, String inno, String chkID)throws Exception;
    
	//新增
	public boolean accountAdd(Account account)throws Exception;
    
    //删除
	public Integer deleteAccount(String chkID)throws Exception;
	
	//修改
	public Account updateAcount(String chkID)throws Exception;
	
	//查询
	public Account getAcounts(String chkID)throws Exception;
	
	//当天总额
	public Integer getDateCount() throws Exception;
	
}
