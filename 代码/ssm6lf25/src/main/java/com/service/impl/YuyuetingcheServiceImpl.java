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


import com.dao.YuyuetingcheDao;
import com.entity.YuyuetingcheEntity;
import com.service.YuyuetingcheService;
import com.entity.vo.YuyuetingcheVO;
import com.entity.view.YuyuetingcheView;

@Service("yuyuetingcheService")
public class YuyuetingcheServiceImpl extends ServiceImpl<YuyuetingcheDao, YuyuetingcheEntity> implements YuyuetingcheService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YuyuetingcheEntity> page = this.selectPage(
                new Query<YuyuetingcheEntity>(params).getPage(),
                new EntityWrapper<YuyuetingcheEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YuyuetingcheEntity> wrapper) {
		  Page<YuyuetingcheView> page =new Query<YuyuetingcheView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YuyuetingcheVO> selectListVO(Wrapper<YuyuetingcheEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YuyuetingcheVO selectVO(Wrapper<YuyuetingcheEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YuyuetingcheView> selectListView(Wrapper<YuyuetingcheEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YuyuetingcheView selectView(Wrapper<YuyuetingcheEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
