package cn.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import cn.entity.Livein;

public interface LiveinMapper {
	/**
	 * 分页 查询
	 * @param inno
	 * @param roomID
	 * @param cID
	 * @param from
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	public List<Livein> getLiveinList( @Param("leveinTypeID") String leveinTypeID,
			                      @Param("inno") String inno,
			                      @Param("roomID") String roomID, 
			                      @Param("cID")String cID, 
			                      @Param("from") Integer from,
			                      @Param("pageSize") Integer pageSize)throws Exception;
	
	/**
	 * 总数
	 * @param inno
	 * @param roomID
	 * @param cID
	 * @return
	 * @throws Exception
	 */
   public Integer liveinCount( @Param("leveinTypeID") String leveinTypeID,
		                       @Param("inno") String inno,
                               @Param("roomID") String roomID, 
                               @Param("cID")String cID )throws Exception;
	/**
	 * 根据房号查询入住单
	 * @param roomID
	 * @return
	 * @throws Exception
	 */
   public Livein getLivein(@Param("id")Integer id)throws Exception;
   /**
    * 添加订单
    * @param livein
    * @return
    * @throws Exception
    */
   public boolean liveinadd(Livein livein) throws Exception;
   /**
    * 修改订单
    * @param livein
    * @return
    * @throws Exception
    */
   public Integer updateLivein(Livein livein)throws Exception;
   /**
    * 根据单号查询
    * @param inno
    * @return
    * @throws Exception
    */
   public Livein LiveinGet(@Param("inno") String inno)throws Exception;
   /**
    * 删除
    * @param id
    * @return
    * @throws Exception
    */
   public Integer deleteID(@Param("id") Integer id) throws Exception;
  
   
}
