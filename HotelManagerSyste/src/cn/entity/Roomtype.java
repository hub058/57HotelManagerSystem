package cn.entity;

import java.util.List;

public class Roomtype {
  private int id ;
  private String roomTypeID;
  private String roomTypeName;
  private String roomPrice;
  private String roomBedNum;
  private String foregift;
  private String clroom	;
  private String clprice;
  private String remark;
  private String delmark;
  
  
  private List<Roominfo> roomInfoList;
  
  public List<Roominfo> getRoomInfoList() {
  	return roomInfoList;
  }
  public void setRoomInfoList(List<Roominfo> roomInfoList) {
  	this.roomInfoList = roomInfoList;
  }
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getRoomTypeID() {
	return roomTypeID;
}
public void setRoomTypeID(String roomTypeID) {
	this.roomTypeID = roomTypeID;
}
public String getRoomTypeName() {
	return roomTypeName;
}
public void setRoomTypeName(String roomTypeName) {
	this.roomTypeName = roomTypeName;
}
public String getRoomPrice() {
	return roomPrice;
}
public void setRoomPrice(String roomPrice) {
	this.roomPrice = roomPrice;
}
public String getRoomBedNum() {
	return roomBedNum;
}
public void setRoomBedNum(String roomBedNum) {
	this.roomBedNum = roomBedNum;
}
public String getForegift() {
	return foregift;
}
public void setForegift(String foregift) {
	this.foregift = foregift;
}
public String getClroom() {
	return clroom;
}
public void setClroom(String clroom) {
	this.clroom = clroom;
}
public String getClprice() {
	return clprice;
}
public void setClprice(String clprice) {
	this.clprice = clprice;
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
  
  
}
