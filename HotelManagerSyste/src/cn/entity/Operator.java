package cn.entity;

import java.util.Date;

public class Operator {
	/**
	 * 后台管理用户表
	 */
    private  int id;  //主键
    private  String userID; //账号
    private  String pwd;    //密码
    private  String puis;   //级别 权限
    private  Date intime;   //登陆时间
    private  String loginnum; //登陆姓名
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPuis() {
		return puis;
	}
	public void setPuis(String puis) {
		this.puis = puis;
	}
	public Date getIntime() {
		return intime;
	}
	public void setIntime(Date intime) {
		this.intime = intime;
	}
	public String getLoginnum() {
		return loginnum;
	}
	public void setLoginnum(String loginnum) {
		this.loginnum = loginnum;
	} 
}
