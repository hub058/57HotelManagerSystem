package cn.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.CustomerTypeMapper;
import cn.entity.Customertype;
import cn.service.CustomerTypeService;
@Service("customerTypeSercive")
public class CustomerTypeServiceImpl implements CustomerTypeService {
	@Autowired
   private CustomerTypeMapper customerTypeMapper;
	
	
	
	@Override
	public List<Customertype> getType(String customerID) throws Exception {
		
		return customerTypeMapper.getType(customerID);
	}

}
