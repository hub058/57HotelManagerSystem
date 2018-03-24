package cn.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Account;

public interface AcountMapper {
 // 分页 查询 结算
public List<Account> getAcount(@Param("userID") String userID,
			                       @Param("chktime") Date chktime,
			                       @Param("inno") String inno,
			                       @Param("chkID") String chkID,
			                       @Param("from") Integer from,
			                       @Param("pageSize")Integer pageSize)throws Exception;
 //总数
 public Integer getCount(@Param("userID") String userID,
                          @Param("chktime") Date chktime,
                          @Param("inno") String inno,
                          @Param("chkID") String chkID)throws Exception; 

  //新增  
 public boolean accountAdd(Account account)throws Exception;
  
 //删除
 public Integer deleteAccount(@Param("chkID")String chkID)throws Exception;

  //修改
 public Account updateAcout(@Param("chkID")String chkID)throws Exception;

 //根据结算单号查询
 public Account getAcounts(@Param("chkID")String chkID)throws Exception;

 //当天总额
 public Integer getDateCount() throws Exception;
}

  