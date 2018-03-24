package cn.entity;

public class Customertype {
    private Integer id;
	private String customerID; //会员类型编号
	private String ctypename;  //类型
	private String disattr;    //折扣 属性
	private String discount;   //折扣 内容
	private String remark;    //备注
	private Integer delmark;   //标记
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public String getCtypename() {
		return ctypename;
	}
	public void setCtypename(String ctypename) {
		this.ctypename = ctypename;
	}
	public String getDisattr() {
		return disattr;
	}
	public void setDisattr(String disattr) {
		this.disattr = disattr;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getDelmark() {
		return delmark;
	}
	public void setDelmark(Integer delmark) {
		this.delmark = delmark;
	}
	
}
