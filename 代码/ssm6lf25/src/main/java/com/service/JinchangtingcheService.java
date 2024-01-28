package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JinchangtingcheEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JinchangtingcheVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JinchangtingcheView;


/**
 * 进场停车
 *
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public interface JinchangtingcheService extends IService<JinchangtingcheEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JinchangtingcheVO> selectListVO(Wrapper<JinchangtingcheEntity> wrapper);
   	
   	JinchangtingcheVO selectVO(@Param("ew") Wrapper<JinchangtingcheEntity> wrapper);
   	
   	List<JinchangtingcheView> selectListView(Wrapper<JinchangtingcheEntity> wrapper);
   	
   	JinchangtingcheView selectView(@Param("ew") Wrapper<JinchangtingcheEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JinchangtingcheEntity> wrapper);
   	
}

