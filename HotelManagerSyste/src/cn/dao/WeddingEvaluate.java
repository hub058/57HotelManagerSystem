package cn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Evaluate;

public interface WeddingEvaluate {

	//发布评价
	public int appEvaluate(@Param("cname")String csex,@Param("ctel")String ctel ,@Param("evaluateName")String evaluateName,
			@Param("alias")String alias);
	
	//查询所有评价
	public List<Evaluate> selectEvaluate();
}
