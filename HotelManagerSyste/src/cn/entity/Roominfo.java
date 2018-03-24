package cn.entity;

public class Roominfo {
	/**
	 * 房间信息表
	 */
      private Integer id; 
      private String roomID; //房间号
      private String roomTypeID;  //房间类型编号
      private String roomState;   //房间状态
      private String roomTel;     //房间电话
      private String roomLoc;     //房间距离地址
      private String remark;     //备注
      private  int delmark ;    //标记
      private String inno;
      private String roomTime;
      private String roomImg;
      private String roomImgBoth;
      private Roomtype roomtype;

  	public String getRoomTime() {
		return roomTime;
	}
	public void setRoomTime(String roomTime) {
		this.roomTime = roomTime;
	}
	public String getRoomImg() {
		return roomImg;
	}
	public void setRoomImg(String roomImg) {
		this.roomImg = roomImg;
	}
	public String getRoomImgBoth() {
		return roomImgBoth;
	}
	public void setRoomImgBoth(String roomImgBoth) {
		this.roomImgBoth = roomImgBoth;
	}
	public Roomtype getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(Roomtype roomtype) {
		this.roomtype = roomtype;
	}
	
  	
  	public String getInno() {
		return inno;
	}
	public void setInno(String inno) {
		this.inno = inno;
	}
	private String roomPrice;     //房间距离地址
    private String roomBedNum;     //备注
    private  String clroom ;    //标记
    private  String clprice ; 
      public String getClprice() {
		return clprice;
	}
	public void setClprice(String clprice) {
		this.clprice = clprice;
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
	public String getClroom() {
		return clroom;
	}
	public void setClroom(String clroom) {
		this.clroom = clroom;
	}

      
      
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRoomID() {
		return roomID;
	}
	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}
	public String getRoomTypeID() {
		return roomTypeID;
	}
	public void setRoomTypeID(String roomTypeID) {
		this.roomTypeID = roomTypeID;
	}
	public String getRoomState() {
		return roomState;
	}
	public void setRoomState(String roomState) {
		this.roomState = roomState;
	}
	public String getRoomTel() {
		return roomTel;
	}
	public void setRoomTel(String roomTel) {
		this.roomTel = roomTel;
	}
	public String getRoomLoc() {
		return roomLoc;
	}
	public void setRoomLoc(String roomLoc) {
		this.roomLoc = roomLoc;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getDelmark() {
		return delmark;
	}
	public void setDelmark(int delmark) {
		this.delmark = delmark;
	}
	public Roominfo(Integer id, String roomID, String roomTypeID,
			String roomState, String roomTel, String roomLoc, String remark,
			int delmark, String roomPrice, String roomBedNum, String clroom,
			String clprice) {
		super();
		this.id = id;
		this.roomID = roomID;
		this.roomTypeID = roomTypeID;
		this.roomState = roomState;
		this.roomTel = roomTel;
		this.roomLoc = roomLoc;
		this.remark = remark;
		this.delmark = delmark;
		this.roomPrice = roomPrice;
		this.roomBedNum = roomBedNum;
		this.clroom = clroom;
		this.clprice = clprice;
	}
	public Roominfo() {
		
	}
      
}
