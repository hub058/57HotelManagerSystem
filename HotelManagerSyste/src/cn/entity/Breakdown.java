package cn.entity;

public class Breakdown {
	//物价破损表
    private Integer id;
    private String breakdownId; //id
    private String breakdownPrice; //价格
    private String breakdownName;  //物品名称
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getBreakdownId() {
		return breakdownId;
	}
	public void setBreakdownId(String breakdownId) {
		this.breakdownId = breakdownId;
	}
	public String getBreakdownPrice() {
		return breakdownPrice;
	}
	public void setBreakdownPrice(String breakdownPrice) {
		this.breakdownPrice = breakdownPrice;
	}
	public String getBreakdownName() {
		return breakdownName;
	}
	public void setBreakdownName(String breakdownName) {
		this.breakdownName = breakdownName;
	}
    
}
