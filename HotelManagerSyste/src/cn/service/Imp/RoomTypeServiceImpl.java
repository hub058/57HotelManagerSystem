package cn.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.RoomTypeMapper;
import cn.entity.Roomtype;
import cn.service.RoomTypeService;


@Service("roomTypeService")
public class RoomTypeServiceImpl implements RoomTypeService{

	@Autowired
	private RoomTypeMapper roomTypeMapper;

	@Override
	public List<Roomtype> getroomType(String roomTypeID) throws Exception {
		
		return roomTypeMapper.getroomType(roomTypeID);
	}

	
	
}
