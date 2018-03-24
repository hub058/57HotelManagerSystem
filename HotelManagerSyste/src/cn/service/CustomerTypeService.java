package cn.service;

import java.util.List;

import cn.entity.Customertype;

public interface CustomerTypeService {
       
	//会员类型
	public List<Customertype> getType(String customerID) throws Exception;
}
