package cn.service;




import cn.entity.Operator;


public interface OperatorService {
	
	
	  /**
	   * 后台用户登陆
	   * @param userID
	   * @param pwd
	   * @return
	   * @throws Exception
	   */
  public Operator Loginuser(String userID,String pwd) throws Exception;

  //修改密码
  public Integer updateOperator(Operator operator) throws Exception;
}
