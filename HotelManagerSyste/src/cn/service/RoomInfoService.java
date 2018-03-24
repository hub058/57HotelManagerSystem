package cn.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Roominfo;


public interface RoomInfoService {
	//查询
	public List<Roominfo> getRoomList(String roomID,String roomState, String roomTypeID,
			Integer from,Integer pageSize ) throws Exception;
	
	//总数
		public Integer count(String roomID,String roomState, String roomTypeID) throws Exception;
	//修改房间类型
		public Integer getUpdate(Roominfo roominfo) throws Exception;
	//修改房间状态
	    public Integer getUpdates(Roominfo roominfo) throws Exception;
    //根据id查询
		public  Roominfo getRoomID(Integer id)throws Exception;
	//id 删除
		public Integer deleteRoom(Integer id) throws Exception;
    //新增
		public boolean addroom(Roominfo roominfo)throws Exception;
    //查询价格
		public Roominfo roomPric(String roomID) throws Exception;
	//查询房间
		public List<Roominfo> roomsList(String roomState,String roomTypeID) throws Exception;
	//根据房号查询
		public Roominfo getroominfo(String roomID)throws Exception;
}
