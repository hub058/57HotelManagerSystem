package cn.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Customertype;


public interface CustomerTypeMapper {
  /**
   * 查询会员
   * @param customerID
   * @return
   * @throws Exception
   */
	public List<Customertype> getType(@Param("customerID") String customerID)throws Exception;
} 
