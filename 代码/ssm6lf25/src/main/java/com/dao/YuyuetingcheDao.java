package com.dao;

import com.entity.YuyuetingcheEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YuyuetingcheVO;
import com.entity.view.YuyuetingcheView;


/**
 * 预约停车
 * 
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public interface YuyuetingcheDao extends BaseMapper<YuyuetingcheEntity> {
	
	List<YuyuetingcheVO> selectListVO(@Param("ew") Wrapper<YuyuetingcheEntity> wrapper);
	
	YuyuetingcheVO selectVO(@Param("ew") Wrapper<YuyuetingcheEntity> wrapper);
	
	List<YuyuetingcheView> selectListView(@Param("ew") Wrapper<YuyuetingcheEntity> wrapper);

	List<YuyuetingcheView> selectListView(Pagination page,@Param("ew") Wrapper<YuyuetingcheEntity> wrapper);
	
	YuyuetingcheView selectView(@Param("ew") Wrapper<YuyuetingcheEntity> wrapper);
	
}
