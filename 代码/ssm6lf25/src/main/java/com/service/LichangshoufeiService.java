package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LichangshoufeiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LichangshoufeiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LichangshoufeiView;


/**
 * 离场收费
 *
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
public interface LichangshoufeiService extends IService<LichangshoufeiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LichangshoufeiVO> selectListVO(Wrapper<LichangshoufeiEntity> wrapper);
   	
   	LichangshoufeiVO selectVO(@Param("ew") Wrapper<LichangshoufeiEntity> wrapper);
   	
   	List<LichangshoufeiView> selectListView(Wrapper<LichangshoufeiEntity> wrapper);
   	
   	LichangshoufeiView selectView(@Param("ew") Wrapper<LichangshoufeiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LichangshoufeiEntity> wrapper);
   	
}

