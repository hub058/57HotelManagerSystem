package cn.entity;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;






public class Customer {

	private int id;
	@NotEmpty(message="用户账户不能为空")
	private String cID;
	@NotNull(message="密码不能为空")
	@Length(min=6,max=16,message="密码长度为6-16位")
	private String pwd;
	private String cname;
	private String csex;
	private String zjtype;
	@Length(min=15,max=18,message="请输入有效证件")
	private String zjno;
	private String caddr;
	@Pattern(regexp="1[3][4][5][7][8][0-9]\\d{8}")
	@NotNull(message="手机号不能为空")
	private String ctel;
	private String remark;
	private String delmark;
	private String ctypeid;
	private String jifen;
	
	private String ctypename;
	
	public String getCtypename() {
		return ctypename;
	}
	public void setCtypename(String ctypename) {
		this.ctypename = ctypename;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getcID() {
		return cID;
	}
	public void setcID(String cID) {
		this.cID = cID;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCsex() {
		return csex;
	}
	public void setCsex(String csex) {
		this.csex = csex;
	}
	public String getZjtype() {
		return zjtype;
	}
	public void setZjtype(String zjtype) {
		this.zjtype = zjtype;
	}
	public String getZjno() {
		return zjno;
	}
	public void setZjno(String zjno) {
		this.zjno = zjno;
	}
	public String getCaddr() {
		return caddr;
	}
	public void setCaddr(String caddr) {
		this.caddr = caddr;
	}
	public String getCtel() {
		return ctel;
	}
	public void setCtel(String ctel) {
		this.ctel = ctel;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getDelmark() {
		return delmark;
	}
	public void setDelmark(String delmark) {
		this.delmark = delmark;
	}
	public String getCtypeid() {
		return ctypeid;
	}
	public void setCtypeid(String ctypeid) {
		this.ctypeid = ctypeid;
	}
	public String getJifen() {
		return jifen;
	}
	public void setJifen(String jifen) {
		this.jifen = jifen;
	}
	
	
}
