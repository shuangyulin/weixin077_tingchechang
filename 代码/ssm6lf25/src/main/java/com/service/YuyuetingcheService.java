package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuyuetingcheEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuyuetingcheVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuyuetingcheView;


/**
 * 预约停车
 *
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public interface YuyuetingcheService extends IService<YuyuetingcheEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuyuetingcheVO> selectListVO(Wrapper<YuyuetingcheEntity> wrapper);
   	
   	YuyuetingcheVO selectVO(@Param("ew") Wrapper<YuyuetingcheEntity> wrapper);
   	
   	List<YuyuetingcheView> selectListView(Wrapper<YuyuetingcheEntity> wrapper);
   	
   	YuyuetingcheView selectView(@Param("ew") Wrapper<YuyuetingcheEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuyuetingcheEntity> wrapper);
   	
}

