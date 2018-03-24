package cn.service;
import java.util.List;
import cn.entity.Roomtype;
public interface RoomTypeService {
	//查询
	public List<Roomtype> getroomType( String roomTypeID ) throws Exception;
	
		
}
