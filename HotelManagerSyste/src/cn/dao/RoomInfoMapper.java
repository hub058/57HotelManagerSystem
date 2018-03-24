package cn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Roominfo;

public interface RoomInfoMapper {
	
  /**
	* 查询
	* @param roomID
    * @param roomState
	* @param roomTypeID
	* @param currentPageNo
	* @param pageSize
	* @return
	* @throws Exception
	*/
  public List<Roominfo> getRoomList(@Param("roomID")String roomID,
		                            @Param("roomState") String roomState ,
		                            @Param("roomTypeID") String roomTypeID,
		                            @Param("from") Integer from,
		                            @Param("pageSize") Integer pageSize ) throws Exception;
 

   /**
    * 总数
    * @param roomID
    * @param roomState
    * @param roomTypeID
    * @return
    * @throws Exception
    */
  public Integer getCount( @Param("roomID")String roomID,
		                   @Param("roomState") String roomState ,
		                   @Param("roomTypeID") String roomTypeID) throws Exception;
 /**
  * 修改
  * @param roominfo
  * @return
  * @throws Exception
  */
  public Integer getUpdate(Roominfo roominfo)throws Exception;
  /**
   * 修改二
   * @param roominfo
   * @return
   * @throws Exception
   */
  public Integer getUpdates(Roominfo roominfo)throws Exception;
  /**
   * 获取id
   * @param id
   * @return
   * @throws Exception
   */
  public Roominfo getRoomID(@Param("id") Integer id) throws Exception;
  /**
   * 删除房间信息
   * @param id
   * @return
   * @throws Exception
   */
  public Integer deleteRoom(@Param("id") Integer id) throws Exception;
  /**
   * 新增房间
   * @param roominfo
   * @return
   * @throws Exception
   */
  public boolean addroom(Roominfo roominfo)throws Exception;

  /**
   * 查询房间价格
   * @param roomId
   * @return
   * @throws Exception
   */
   public Roominfo roomPric(String roomID) throws Exception;
    /**
     * 查询房间
     * @param roomID
     * @return
     * @throws Exception
     */
   public List<Roominfo> roomsList(@Param("roomState")String roomState,@Param("roomTypeID") String roomTypeID)throws Exception;
  /**
   * 根据房号查询
   * @param roomID
   * @return
   * @throws Exception
   */
    public Roominfo getroominfo(@Param("roomID") String roomID) throws Exception;
}


  