package cn.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;
/**
 * 入住表
 */
public class Livein {
   
	private int id;
	private String inno;   //入住单号
	private String roomID; //房间号
	private String cID;    //客户类型编号
	private String cname;  //客户姓名
	private String csex;   //客户性别
	private String zjtype; //证件类型
	private String zjno;   //证件编号
	private String addr;   //住址
	private Integer renshu;    //人数
	@JSONField(format="yyyy-MM-dd")
	private Date intime;   //入住时间
	@JSONField(format="yyyy-MM-dd")
	private Date leavetime; //离开时间
    private String delmark;  //标记
    private String ctel;   //客户电话
    private String foregift; //客户押金
    private Integer days;        //入住天数
    private String leveinTypeID;
    
    private List<Account> accountList;
    
    public List<Account> getAccountList() {
		return accountList;
	}
	public void setAccountList(List<Account> accountList) {
		this.accountList = accountList;
	}
	private String leveintype;
    private String leveinTypeName;
    public String getLeveintype() {
		return leveintype;
	}
	public void setLeveintype(String leveintype) {
		this.leveintype = leveintype;
	}
	public String getLeveinTypeName() {
		return leveinTypeName;
	}
	public void setLeveinTypeName(String leveinTypeName) {
		this.leveinTypeName = leveinTypeName;
	}
	public String getLeveinTypeID() {
		return leveinTypeID;
	}
	public void setLeveinTypeID(String leveinTypeID) {
		this.leveinTypeID = leveinTypeID;
	}
	private String account;  //消费总额

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getInno() {
		return inno;
	}
	public void setInno(String inno) {
		this.inno = inno;
	}
	public String getRoomID() {
		return roomID;
	}
	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}
	public String getcID() {
		return cID;
	}
	public void setcID(String cID) {
		this.cID = cID;
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
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public Date getIntime() {
		return intime;
	}
	public void setIntime(Date intime) {
		this.intime = intime;
	}
	public Date getLeavetime() {
		return leavetime;
	}
	public void setLeavetime(Date leavetime) {
		this.leavetime = leavetime;
	}
	
	public String getDelmark() {
		return delmark;
	}
	public void setDelmark(String delmark) {
		this.delmark = delmark;
	}
	public String getCtel() {
		return ctel;
	}
	public void setCtel(String ctel) {
		this.ctel = ctel;
	}
	public String getForegift() {
		return foregift;
	}
	public void setForegift(String foregift) {
		this.foregift = foregift;
	}
	
	public Integer getRenshu() {
		return renshu;
	}
	public void setRenshu(Integer renshu) {
		this.renshu = renshu;
	}
	public Integer getDays() {
		return days;
	}
	public void setDays(Integer days) {
		this.days = days;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
}
