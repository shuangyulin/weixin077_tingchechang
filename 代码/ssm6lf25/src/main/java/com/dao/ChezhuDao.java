package com.dao;

import com.entity.ChezhuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChezhuVO;
import com.entity.view.ChezhuView;


/**
 * 车主
 * 
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public interface ChezhuDao extends BaseMapper<ChezhuEntity> {
	
	List<ChezhuVO> selectListVO(@Param("ew") Wrapper<ChezhuEntity> wrapper);
	
	ChezhuVO selectVO(@Param("ew") Wrapper<ChezhuEntity> wrapper);
	
	List<ChezhuView> selectListView(@Param("ew") Wrapper<ChezhuEntity> wrapper);

	List<ChezhuView> selectListView(Pagination page,@Param("ew") Wrapper<ChezhuEntity> wrapper);
	
	ChezhuView selectView(@Param("ew") Wrapper<ChezhuEntity> wrapper);
	
}
