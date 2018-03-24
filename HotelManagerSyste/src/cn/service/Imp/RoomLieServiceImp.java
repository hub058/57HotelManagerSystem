package cn.service.Imp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import cn.dao.RoomLie;
import cn.entity.Engage;
import cn.entity.Roominfo;
import cn.entity.Roomtype;
import cn.service.RoomLieService;
import cn.tools.Page;

@Service("roomLieService")
public class RoomLieServiceImp<ProductWithBLOBs> implements RoomLieService{

	@Autowired
	private RoomLie roomLie;

	@Override
	public List<Roomtype> RoomMold() {
		List<Roomtype> roomMold = roomLie.RoomMold();
		return roomMold;
	}

	
	//空房
	@Override
	public List<Roominfo> RentRoom(String roomTypeId){ 
		List<Roominfo> list = roomLie.RentRoom(roomTypeId);
		if (list != null) {
			return list;
		}
		return null;
	}

	@Override
	public Roomtype roomGole(String roomTypeId) {
		Roomtype roomGold = roomLie.roomGold(roomTypeId);
		if (roomGold != null) {
			return roomGold;
		}
		System.out.println("押金");
		return null;
	}

	@Override
	public Roominfo Roomlx(String roomlx) {
		// TODO Auto-generated method stub
		Roominfo info = roomLie.Roomlx(roomlx);
		if (info != null) {
		return info;	
		}
		return null;
	}

	@Override
	public List<Roominfo> RoomAal(Integer startPos,Integer pageSize,String roomTypeID) {
		// TODO Auto-generated method stub
		List<Roominfo> list = roomLie.RoomAll(startPos, pageSize, roomTypeID);
		if (list != null) {
			return list;
		}
		return null;
	}

	@Override
	public Roominfo DetailRoom(int id) {
		// TODO Auto-generated method stub
		Roominfo info = roomLie.DetailRoom(id);
		if (info != null) {
			return info;
		}
		return null;
	}
	//推荐房间
	@Override
	public List<Roominfo> limitRoom() {
		// TODO Auto-generated method stub
		List<Roominfo> limit = roomLie.limitRoom();
		if (limit != null) {
			return limit;
		}
		return null;
	}

	@Override
	public List<Roominfo> roomRecently() {
		// TODO Auto-generated method stub
		List<Roominfo> list = roomLie.roomRecently();
		if (list != null) {
			return list;
		}
		return null;
	}

	@Override
	public Roominfo referRoom(String roomTypeID, String roomID) {
		// TODO Auto-generated method stub
		Roominfo refer = roomLie.referRoom( roomTypeID,roomID);
		if (refer != null) {
			return refer;
		}
		return null;
	}
		//预定
	@Override
	public int RoomOrder(String cID, String cname, String ctels, String roomID,
			Date intime, String demand, Date leavetime,
			String foregift) {
		int i = roomLie.RoomOrder(cID, cname, ctels, roomID, intime, demand, leavetime, foregift);
		 
		if (i != 0) {
			return 1;
		}
		return 0;
	}


	@Override
	public int sumSelect() {
		// TODO Auto-generated method stub
		int i = roomLie.sumSelect();
		if (i >0) {
			
			return i;
		}
		return 0;
	}


	@Override
	public int qvyuding(String roomID) {
		// TODO Auto-generated method stub
		return roomLie.qvyuding(roomID);
	}


	@Override
	public int alterRoom(String roomID) {
		// TODO Auto-generated method stub
		return roomLie.alterRoom(roomID);
	}


	

}
