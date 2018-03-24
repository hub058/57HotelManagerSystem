package cn.service;

import java.util.List;

import cn.entity.Engage;


public interface EngageService {
	
	/**
	 * 根据房号查询
	 * @param roomID
	 * @return
	 * @throws Exception
	 */
  public Engage getEngage(String roomID) throws Exception;
  //分页
  public List<Engage> getListEngage(String cID,String ctels,Integer from,Integer pageSize)throws Exception;
  //总数
  public Integer engageCount(String cID,String ctels)throws Exception;

  //删除
  public Integer deleteEngage(String roomID)throws Exception;
  
}
