package cn.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.entity.Customer;


public interface CustomerMapper {

	/**
	 * 前台用户注册
	 * @param customer
	 * @return
	 * @throws Exception
	 */
	public boolean UserInage(Customer customer) throws Exception;
	/**
	 * 后台用户注册
	 * @param customer
	 * @return
	 * @throws Exception
	 */
	public boolean UserInages(Customer customer) throws Exception;
	
	/**
	 * 分页 查询
	 * @param cID
	 * @param from
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	public List<Customer> customerList(@Param("cID")      String cID,
			                           @Param("ctel")     String ctel,
			                           @Param("from")     Integer from,
			                           @Param("pageSize") Integer pageSize)throws Exception;
	
	/**
	 * 总数
	 * @param cID
	 * @return
	 * @throws Exception
	 */
	public Integer countCustomer(@Param("cID") String cID,@Param("ctel") String ctel)throws Exception;

    /**
     * 验证
     * @param cID
     * @return
     * @throws Exception
     */
    public Customer selectcID(@Param("cID") String cID)throws Exception;
    /**
     * 修改
     * @param cID
     * @return
     * @throws Exception
     */
    public Integer updatecId(Customer customer)throws Exception;
    /**
     * 删除
     * @param cID
     * @return
     * @throws Exception
     */
    public Integer deletecID(@Param("cID") String cID)throws Exception;
}
