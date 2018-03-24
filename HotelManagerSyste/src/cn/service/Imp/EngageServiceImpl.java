package cn.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.EngageMapper;
import cn.entity.Engage;
import cn.service.EngageService;
@Service("engageService")
public class EngageServiceImpl implements EngageService {
	 @Autowired
	private EngageMapper engageMapper;
	@Override
	public Engage getEngage(String roomID) throws Exception {
		
		return engageMapper.getEngage(roomID);
	}
	@Override
	public List<Engage> getListEngage(String cID, String ctels, Integer from,
			Integer pageSize) throws Exception {
		
		return engageMapper.getListEngage(cID, ctels, (from-1)*pageSize,pageSize);
	}
	@Override
	public Integer engageCount(String cID, String ctels) throws Exception {
		
		return engageMapper.engageCount(cID, ctels);
	}
	@Override
	public Integer deleteEngage(String roomID) throws Exception {
		
		return engageMapper.deleteEngage(roomID);
	}

}
