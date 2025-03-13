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


import com.dao.DiscusskaoyankechengDao;
import com.entity.DiscusskaoyankechengEntity;
import com.service.DiscusskaoyankechengService;
import com.entity.vo.DiscusskaoyankechengVO;
import com.entity.view.DiscusskaoyankechengView;

@Service("discusskaoyankechengService")
public class DiscusskaoyankechengServiceImpl extends ServiceImpl<DiscusskaoyankechengDao, DiscusskaoyankechengEntity> implements DiscusskaoyankechengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusskaoyankechengEntity> page = this.selectPage(
                new Query<DiscusskaoyankechengEntity>(params).getPage(),
                new EntityWrapper<DiscusskaoyankechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusskaoyankechengEntity> wrapper) {
		  Page<DiscusskaoyankechengView> page =new Query<DiscusskaoyankechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusskaoyankechengVO> selectListVO(Wrapper<DiscusskaoyankechengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusskaoyankechengVO selectVO(Wrapper<DiscusskaoyankechengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusskaoyankechengView> selectListView(Wrapper<DiscusskaoyankechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusskaoyankechengView selectView(Wrapper<DiscusskaoyankechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
