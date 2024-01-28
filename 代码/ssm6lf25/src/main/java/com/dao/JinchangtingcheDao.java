package com.dao;

import com.entity.JinchangtingcheEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JinchangtingcheVO;
import com.entity.view.JinchangtingcheView;


/**
 * 进场停车
 * 
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public interface JinchangtingcheDao extends BaseMapper<JinchangtingcheEntity> {
	
	List<JinchangtingcheVO> selectListVO(@Param("ew") Wrapper<JinchangtingcheEntity> wrapper);
	
	JinchangtingcheVO selectVO(@Param("ew") Wrapper<JinchangtingcheEntity> wrapper);
	
	List<JinchangtingcheView> selectListView(@Param("ew") Wrapper<JinchangtingcheEntity> wrapper);

	List<JinchangtingcheView> selectListView(Pagination page,@Param("ew") Wrapper<JinchangtingcheEntity> wrapper);
	
	JinchangtingcheView selectView(@Param("ew") Wrapper<JinchangtingcheEntity> wrapper);
	
}
