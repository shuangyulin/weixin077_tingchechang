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


import com.dao.JinchangtingcheDao;
import com.entity.JinchangtingcheEntity;
import com.service.JinchangtingcheService;
import com.entity.vo.JinchangtingcheVO;
import com.entity.view.JinchangtingcheView;

@Service("jinchangtingcheService")
public class JinchangtingcheServiceImpl extends ServiceImpl<JinchangtingcheDao, JinchangtingcheEntity> implements JinchangtingcheService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JinchangtingcheEntity> page = this.selectPage(
                new Query<JinchangtingcheEntity>(params).getPage(),
                new EntityWrapper<JinchangtingcheEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JinchangtingcheEntity> wrapper) {
		  Page<JinchangtingcheView> page =new Query<JinchangtingcheView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JinchangtingcheVO> selectListVO(Wrapper<JinchangtingcheEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JinchangtingcheVO selectVO(Wrapper<JinchangtingcheEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JinchangtingcheView> selectListView(Wrapper<JinchangtingcheEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JinchangtingcheView selectView(Wrapper<JinchangtingcheEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
