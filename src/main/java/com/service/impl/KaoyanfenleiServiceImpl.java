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


import com.dao.KaoyanfenleiDao;
import com.entity.KaoyanfenleiEntity;
import com.service.KaoyanfenleiService;
import com.entity.vo.KaoyanfenleiVO;
import com.entity.view.KaoyanfenleiView;

@Service("kaoyanfenleiService")
public class KaoyanfenleiServiceImpl extends ServiceImpl<KaoyanfenleiDao, KaoyanfenleiEntity> implements KaoyanfenleiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KaoyanfenleiEntity> page = this.selectPage(
                new Query<KaoyanfenleiEntity>(params).getPage(),
                new EntityWrapper<KaoyanfenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KaoyanfenleiEntity> wrapper) {
		  Page<KaoyanfenleiView> page =new Query<KaoyanfenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KaoyanfenleiVO> selectListVO(Wrapper<KaoyanfenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KaoyanfenleiVO selectVO(Wrapper<KaoyanfenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KaoyanfenleiView> selectListView(Wrapper<KaoyanfenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KaoyanfenleiView selectView(Wrapper<KaoyanfenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
