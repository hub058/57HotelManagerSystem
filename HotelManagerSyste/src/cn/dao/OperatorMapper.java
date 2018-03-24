package cn.dao;

import org.apache.ibatis.annotations.Param;

import cn.entity.Operator;

public interface OperatorMapper {
	/**
	 * 后台登录
	 * @param userID
	 * @param pwd
	 * @return
	 * @throws Exception
	 */
   public Operator Loginuser(@Param("userID")String userID)throws Exception;

  //修改密码
   public Integer updateOperator(Operator operator )throws Exception;
   
}
