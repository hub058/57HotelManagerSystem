package cn.service.Imp;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.AcountMapper;
import cn.entity.Account;
import cn.service.AcountService;
@Service("acountService")
public class AcountServiceImpl implements AcountService {
    @Autowired
	private AcountMapper acountMapper;
	@Override
	public List<Account> getacount(String userID, Date chktime, String inno,
			String chkID, Integer from, Integer pageSize) throws Exception {
	
		return acountMapper.getAcount(userID, chktime, inno, chkID, (from-1)*pageSize, pageSize);
	}
	@Override
	public Integer getCount(String userID, Date chktime, String inno,
			String chkID) throws Exception {
		
		return acountMapper.getCount(userID, chktime, inno, chkID);
	}
	@Override
	public boolean accountAdd(Account account) throws Exception {
		
		return acountMapper.accountAdd(account);
	}
	@Override
	public Integer deleteAccount(String chkID) throws Exception {
		
		return acountMapper.deleteAccount(chkID);
	}
	@Override
	public Account updateAcount(String chkID) throws Exception {
		
		return acountMapper.updateAcout(chkID);
	}
	@Override
	public Account getAcounts(String chkID) throws Exception {
		
		return acountMapper.getAcounts(chkID);
	}
	@Override
	public Integer getDateCount() throws Exception {
		
		return acountMapper.getDateCount();
	}

	
}
