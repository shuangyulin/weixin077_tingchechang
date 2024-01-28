package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.LichangshoufeiDao;
import com.entity.LichangshoufeiEntity;
import com.service.LichangshoufeiService;
import com.entity.vo.LichangshoufeiVO;
import com.entity.view.LichangshoufeiView;

@Service("lichangshoufeiService")
public class LichangshoufeiServiceImpl extends ServiceImpl<LichangshoufeiDao, LichangshoufeiEntity> implements LichangshoufeiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LichangshoufeiEntity> page = this.selectPage(
                new Query<LichangshoufeiEntity>(params).getPage(),
                new EntityWrapper<LichangshoufeiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LichangshoufeiEntity> wrapper) {
		  Page<LichangshoufeiView> page =new Query<LichangshoufeiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LichangshoufeiVO> selectListVO(Wrapper<LichangshoufeiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LichangshoufeiVO selectVO(Wrapper<LichangshoufeiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LichangshoufeiView> selectListView(Wrapper<LichangshoufeiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LichangshoufeiView selectView(Wrapper<LichangshoufeiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
