package cn.service.Imp;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.OperatorMapper;

import cn.entity.Operator;
import cn.service.OperatorService;


@Service("operatorService")
public class OperatorSerciveImpl implements OperatorService {

	@Autowired
	private OperatorMapper operatorMapper;

	@Override
	public Operator Loginuser(String userID, String pwd) throws Exception {
	   Operator operator=null;
	   operator=operatorMapper.Loginuser(userID);
	   //匹配密码
	   if (null != operator) {
		if (!operator.getPwd().equals(pwd)) {
			operator=null;
		}
	}
		return operator;
	}

	@Override
	public Integer updateOperator(Operator operator) throws Exception {
		
		return operatorMapper.updateOperator(operator);
	}


	

	
	

	

}
