package cn.service.Imp;

import java.util.List;

import javax.enterprise.inject.Alternative;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.dao.WeddingEvaluate;
import cn.entity.Evaluate;
import cn.service.WeddingEvaluateService;

@Service("weddingEvaluateService")
public class WeddingEvaluateServiceImp implements WeddingEvaluateService{
	
	@Autowired
	private WeddingEvaluate evaluate;
	
	@Override
	public int appEvaluate(String csex, String ctel, String evaluateName,String alias) {
		// TODO Auto-generated method stub
		int appEvaluate = evaluate.appEvaluate(csex, ctel, evaluateName,alias);
		if (appEvaluate > 0) {
			return appEvaluate;
		}
		return 0;
	}

	@Override
	public List<Evaluate> selectEvaluate() {
		// TODO Auto-generated method stub
		List<Evaluate> list = evaluate.selectEvaluate();
		if (list != null) {
			return list;
		}
		return null;
	}

}
