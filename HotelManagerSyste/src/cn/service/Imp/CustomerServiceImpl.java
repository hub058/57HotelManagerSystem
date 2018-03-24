package cn.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.CustomerMapper;
import cn.entity.Customer;
import cn.service.CustomerService;

@Service("customerSercive")
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerMapper customerMapper;

	
	@Override
	public boolean UserInage(Customer customer) throws Exception {
		return customerMapper.UserInage(customer);
	}


	@Override
	public List<Customer> customerList(String cID,String ctel, Integer from,
			Integer pageSize) throws Exception {
		return customerMapper.customerList(cID,ctel, (from-1)*pageSize, pageSize);
	}

	@Override
	public Integer countCustomer(String cID,String ctel) throws Exception {
		return customerMapper.countCustomer(cID,ctel);
	}


	@Override
	public Customer selectcID(String cID) throws Exception {
		
		return customerMapper.selectcID(cID);
	}


	@Override
	public boolean UserInages(Customer customer) throws Exception {
		
		return customerMapper.UserInages(customer);
	}


	@Override
	public Integer updatecID(Customer customer) throws Exception {
		
		return customerMapper.updatecId(customer);
	}


	@Override
	public Integer deletecID(String cID) throws Exception {
	
		return customerMapper.deletecID(cID);
	}





	
	
	

	

}
