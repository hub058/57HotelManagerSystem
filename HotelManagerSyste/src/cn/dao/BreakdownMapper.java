package cn.dao;
import java.util.List;
import cn.entity.Breakdown;

public interface BreakdownMapper {
    /**
     * 物价赔损
     * @param breakdown
     * @return
     * @throws Exception
     */
	public List<Breakdown> getBreak(Breakdown breakdown)throws Exception;
}
