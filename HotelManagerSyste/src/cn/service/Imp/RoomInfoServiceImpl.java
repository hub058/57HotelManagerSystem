package cn.service.Imp;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.RoomInfoMapper;
import cn.entity.Roominfo;
import cn.service.RoomInfoService;


@Service("roomInfoService")
public class RoomInfoServiceImpl implements RoomInfoService{

	@Autowired
	private RoomInfoMapper roomInfoMapper;

	@Override
	public Integer count(String roomID, String roomState, String roomTypeID)
			throws Exception {
		
		return roomInfoMapper.getCount(roomID, roomState, roomTypeID);
	}

	@Override
	public List<Roominfo> getRoomList(String roomID, String roomState,
			String roomTypeID, Integer from, Integer pageSize) throws Exception {
		
		return roomInfoMapper.getRoomList(roomID, roomState, roomTypeID, 
				(from-1)*pageSize, pageSize);
	}

	@Override
	public Integer getUpdate(Roominfo roominfo) throws Exception {
	
		return roomInfoMapper.getUpdate(roominfo);
	}

	@Override
	public Roominfo getRoomID(Integer id) throws Exception {
		
		return roomInfoMapper.getRoomID(id);
	}

	@Override
	public Integer deleteRoom(Integer id) throws Exception {
		
		return roomInfoMapper.deleteRoom(id);
	}

	@Override
	public boolean addroom(Roominfo roominfo) throws Exception {
		
		return roomInfoMapper.addroom(roominfo);
	}

	@Override
	public Roominfo roomPric(String roomID) throws Exception {
		
		return roomInfoMapper.roomPric(roomID);
	}

	@Override
	public List<Roominfo> roomsList(String roomState,String roomTypeID) throws Exception {
		
		return roomInfoMapper.roomsList(roomState,roomTypeID);
	}

	@Override
	public Roominfo getroominfo(String roomID) throws Exception {
		
		return roomInfoMapper.getroominfo(roomID);
	}

	@Override
	public Integer getUpdates(Roominfo roominfo) throws Exception {
		
		return roomInfoMapper.getUpdates(roominfo);
	}

	

	
}
