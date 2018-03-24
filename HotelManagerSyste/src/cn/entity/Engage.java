package cn.entity;

import java.util.Date;

public class Engage {

	private String id;
	private String cID;
	private String cname;
	private String ctels;
	private String roomID;
	private String verify;
	private String engagetime;
	private Date leavetime;
	private Date intime;
	private String engagemark;
	private String foregift;
	private String demand;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getCtels() {
		return ctels;
	}
	public void setCtels(String ctels) {
		this.ctels = ctels;
	}
	public String getRoomID() {
		return roomID;
	}
	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	public String getEngagetime() {
		return engagetime;
	}
	public void setEngagetime(String engagetime) {
		this.engagetime = engagetime;
	}
	public Date getLeavetime() {
		return leavetime;
	}
	public void setLeavetime(Date leavetime) {
		this.leavetime = leavetime;
	}
	public Date getIntime() {
		return intime;
	}
	public void setIntime(Date intime) {
		this.intime = intime;
	}
	public String getEngagemark() {
		return engagemark;
	}
	public void setEngagemark(String engagemark) {
		this.engagemark = engagemark;
	}
	public String getForegift() {
		return foregift;
	}
	public void setForegift(String foregift) {
		this.foregift = foregift;
	}
	public String getDemand() {
		return demand;
	}
	public void setDemand(String demand) {
		this.demand = demand;
	}
}