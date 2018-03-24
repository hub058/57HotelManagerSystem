package cn.service;

import java.util.List;

import cn.entity.Breakdown;

public interface BreakdownService {

	 //物价赔损
	public List<Breakdown> getBreak(Breakdown breakdown)throws Exception;
}
