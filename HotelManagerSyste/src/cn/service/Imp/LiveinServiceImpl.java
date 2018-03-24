package cn.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.LiveinMapper;
import cn.entity.Livein;
import cn.service.LiveinService;
@Service("liveinService")
public class LiveinServiceImpl implements LiveinService {
	@Autowired
  private LiveinMapper liveinMapper;
	@Override
	public Livein Loginuser(Integer id) throws Exception {
		
		return liveinMapper.getLivein(id);
	}
	@Override
	public List<Livein> getLiveinList(String leveinTypeID,String inno, String roomID, String cID,Integer from,Integer pageSize)
			throws Exception {
		
		return liveinMapper.getLiveinList(leveinTypeID,inno, roomID, cID, (from-1)*pageSize, pageSize);
	}
	@Override
	public Integer getCount(String leveinTypeID,String inno, String roomID, String cID)
			throws Exception {
		
		return liveinMapper.liveinCount(leveinTypeID,inno, roomID, cID);
	}
	@Override
	public boolean liveinAdd(Livein livein) throws Exception {
		
		return liveinMapper.liveinadd(livein);
	}
	@Override
	public Integer updateLivein(Livein livein) throws Exception {
		
		return liveinMapper.updateLivein(livein);
	}
	@Override
	public Livein LiveinGet(String inno) throws Exception {
		
		return liveinMapper.LiveinGet(inno);
	}
	@Override
	public Integer deleteId(Integer id) throws Exception {
		
		return liveinMapper.deleteID(id);
	}

}
