package cn.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Engage;
import cn.entity.Roominfo;
import cn.entity.Roomtype;


public interface RoomLie {

	// 查询所有房间类型
	public List<Roomtype> RoomMold();

	// 预定房间
	public int RoomOrder(@Param("cID") String cID,
			@Param("cname") String cname, @Param("ctels") String ctels,
			@Param("roomID") String roomID, @Param("intime") Date intime,
			 @Param("demand") String demand,
			@Param("leavetime") Date leavetime,
			@Param("foregift") String foregift);

	// 查询出空房
	public List<Roominfo> RentRoom(@Param("roomTypeId") String roomTypeId);
	
	//押金
	public Roomtype roomGold(@Param("roomTypeId") String roomTypeId);
	//获取选择的类型的押金
	public Roominfo Roomlx(@Param("roomlx")String roomlx);
	//所有房间
	public List<Roominfo> RoomAll(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize,
			@Param(value="roomTypeID") String roomTypeID);
	//查询房间总数
	public int sumSelect();
	
	//房间细节
	public Roominfo DetailRoom(@Param("id")int id);
	//推荐房间
	public List<Roominfo> limitRoom();
	//最近房间
	public List<Roominfo> roomRecently();
	//房间查询
	public Roominfo referRoom(@Param("roomTypeID")String roomTypeID,@Param("roomID")String roomID);
	//去预定
	public int qvyuding(@Param("roomID")String roomID);
	//修改房间状态
	public int alterRoom(@Param("roomID")String roomID);
}
