package com.dao;

import com.entity.LichangshoufeiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LichangshoufeiVO;
import com.entity.view.LichangshoufeiView;


/**
 * 离场收费
 * 
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public interface LichangshoufeiDao extends BaseMapper<LichangshoufeiEntity> {
	
	List<LichangshoufeiVO> selectListVO(@Param("ew") Wrapper<LichangshoufeiEntity> wrapper);
	
	LichangshoufeiVO selectVO(@Param("ew") Wrapper<LichangshoufeiEntity> wrapper);
	
	List<LichangshoufeiView> selectListView(@Param("ew") Wrapper<LichangshoufeiEntity> wrapper);

	List<LichangshoufeiView> selectListView(Pagination page,@Param("ew") Wrapper<LichangshoufeiEntity> wrapper);
	
	LichangshoufeiView selectView(@Param("ew") Wrapper<LichangshoufeiEntity> wrapper);
	
}
