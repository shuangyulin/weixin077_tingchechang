package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChezhuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChezhuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChezhuView;


/**
 * 车主
 *
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public interface ChezhuService extends IService<ChezhuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChezhuVO> selectListVO(Wrapper<ChezhuEntity> wrapper);
   	
   	ChezhuVO selectVO(@Param("ew") Wrapper<ChezhuEntity> wrapper);
   	
   	List<ChezhuView> selectListView(Wrapper<ChezhuEntity> wrapper);
   	
   	ChezhuView selectView(@Param("ew") Wrapper<ChezhuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChezhuEntity> wrapper);
   	
}

