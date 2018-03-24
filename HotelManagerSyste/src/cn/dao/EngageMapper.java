package cn.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Engage;
import cn.entity.Livein;

public interface EngageMapper {
	/**
	 * 根据房号查询预定单
	 * @param roomID
	 * @return
	 * @throws Exception
	 */
   public Engage getEngage(@Param("roomID")String roomID)throws Exception;
   //分页
   public List<Engage> getListEngage(@Param("cID")String cID,
		                             @Param("ctels")String ctels,
		                             @Param("from")Integer from,
		                             @Param("pageSize")Integer pageSize)throws Exception;
   //总数
   public Integer engageCount(@Param("cID")String cID,@Param("ctels")String ctels)throws Exception;
   
   //删除
   public Integer deleteEngage(@Param("roomID")String roomID)throws Exception;
   
   //修改
   public Engage updateEngage(@Param("id")Integer id)throws Exception;
}
