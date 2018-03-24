package cn.service;

import java.util.List;

import cn.entity.Livein;

public interface LiveinService {
	
	//分页 查询
   public List<Livein> getLiveinList(String leveinTypeID,String inno,String roomID,String cID,Integer from,Integer pageSize)throws Exception;
	
   //总数
   public Integer getCount(String leveinTypeID,String inno,String roomID,String cID) throws Exception;
   
	//根据房号
   public Livein Loginuser(Integer id) throws Exception;
   
   //新增订单
   public boolean liveinAdd(Livein livein)throws Exception;
   //修改订单
   public Integer updateLivein(Livein livein)throws Exception;
	//根据订单单号查询
   public Livein LiveinGet(String inno)throws Exception;
   //根据id删除
   public Integer deleteId(Integer id)throws Exception;
}
