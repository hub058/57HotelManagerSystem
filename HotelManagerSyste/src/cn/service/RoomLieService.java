package cn.service;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import cn.entity.Engage;
import cn.entity.Roominfo;

import cn.entity.Roomtype;

public interface RoomLieService {

	// 查询所有房间类型
	public List<Roomtype> RoomMold();
	// 查询房间类型
	public Roominfo Roomlx(String roomlx);
	

	// 预定房间
	public int RoomOrder(@Param("cID") String cID,
			@Param("cname") String cname, @Param("ctels") String ctels,
			@Param("roomID") String roomID, @Param("intime") Date intime,
			@Param("demand")String demand,
			@Param("leavetime") Date leavetime,
			@Param("foregift") String foregift);
	//空房
	public List<Roominfo> RentRoom(String roomTypeId);
	
	//押金
	public Roomtype roomGole(String roomTypeId);
	//所有房间
	public List<Roominfo> RoomAal(Integer startPos,Integer pageSize,String roomTypeID);
	//查询房间总数
		public int sumSelect();
	//房间细节
	public Roominfo DetailRoom(int id);
	//推荐房间
		public List<Roominfo> limitRoom();
	//最近房间
		public List<Roominfo> roomRecently();
	//推荐房间
		public Roominfo referRoom(String roomTypeID , String roomID);
		//去预定
		public int qvyuding(@Param("roomID")String roomID);
		//修改房间状态
		public int alterRoom(@Param("roomID")String roomID);
}
