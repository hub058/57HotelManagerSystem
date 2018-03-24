package cn.entity;

import java.util.Date;
import java.util.List;
public class Account {

	private String chkID;
	private String inno;
	private Date chktime;
	private Date updateTime;
	private String userID;
	private String delmark;
	private String breakdownAccount;
	private String money;
	private String moneycount;
	
	private Livein livein;

	
	public Livein getLivein() {
		return livein;
	}
	public void setLivein(Livein livein) {
		this.livein = livein;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public String getChkID() {
		return chkID;
	}
	public void setChkID(String chkID) {
		this.chkID = chkID;
	}
	public String getInno() {
		return inno;
	}
	public String getDelmark() {
		return delmark;
	}
	public void setDelmark(String delmark) {
		this.delmark = delmark;
	}
	public String getBreakdownAccount() {
		return breakdownAccount;
	}
	public void setBreakdownAccount(String breakdownAccount) {
		this.breakdownAccount = breakdownAccount;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getMoneycount() {
		return moneycount;
	}
	public void setMoneycount(String moneycount) {
		this.moneycount = moneycount;
	}
	public void setInno(String inno) {
		this.inno = inno;
	}
	public Date getChktime() {
		return chktime;
	}
	public void setChktime(Date chktime) {
		this.chktime = chktime;
	}
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	

	
	
	
}
