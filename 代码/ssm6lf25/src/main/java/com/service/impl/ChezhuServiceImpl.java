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


import com.dao.ChezhuDao;
import com.entity.ChezhuEntity;
import com.service.ChezhuService;
import com.entity.vo.ChezhuVO;
import com.entity.view.ChezhuView;

@Service("chezhuService")
public class ChezhuServiceImpl extends ServiceImpl<ChezhuDao, ChezhuEntity> implements ChezhuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChezhuEntity> page = this.selectPage(
                new Query<ChezhuEntity>(params).getPage(),
                new EntityWrapper<ChezhuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChezhuEntity> wrapper) {
		  Page<ChezhuView> page =new Query<ChezhuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChezhuVO> selectListVO(Wrapper<ChezhuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChezhuVO selectVO(Wrapper<ChezhuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChezhuView> selectListView(Wrapper<ChezhuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChezhuView selectView(Wrapper<ChezhuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
