package cn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Roomtype;


public interface RoomTypeMapper {

	
	 
	  /**
	   * 房间类型
	   * @param roomTypeID
	   * @return
	   * @throws Exception
	   */
	  public List<Roomtype> getroomType(@Param("roomTypeID") String roomTypeID) throws Exception;
	  
}
