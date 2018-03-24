package cn.service.Imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.BreakdownMapper;
import cn.entity.Breakdown;
import cn.service.BreakdownService;
@Service("breakdownService")
public class BreakdownServiceImpl implements BreakdownService {
@Autowired
private BreakdownMapper breakdownMapper;
	
	@Override
	public List<Breakdown> getBreak(Breakdown breakdown) throws Exception {
	
		return breakdownMapper.getBreak(breakdown);
	}

}
