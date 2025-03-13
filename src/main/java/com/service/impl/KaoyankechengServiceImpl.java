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


import com.dao.KaoyankechengDao;
import com.entity.KaoyankechengEntity;
import com.service.KaoyankechengService;
import com.entity.vo.KaoyankechengVO;
import com.entity.view.KaoyankechengView;

@Service("kaoyankechengService")
public class KaoyankechengServiceImpl extends ServiceImpl<KaoyankechengDao, KaoyankechengEntity> implements KaoyankechengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KaoyankechengEntity> page = this.selectPage(
                new Query<KaoyankechengEntity>(params).getPage(),
                new EntityWrapper<KaoyankechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KaoyankechengEntity> wrapper) {
		  Page<KaoyankechengView> page =new Query<KaoyankechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KaoyankechengVO> selectListVO(Wrapper<KaoyankechengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KaoyankechengVO selectVO(Wrapper<KaoyankechengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KaoyankechengView> selectListView(Wrapper<KaoyankechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KaoyankechengView selectView(Wrapper<KaoyankechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
