package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusskaoyankechengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusskaoyankechengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusskaoyankechengView;


/**
 * 考研课程评论表
 *
 * @author 
 * @email 
 * @date 2021-01-28 20:13:23
 */
public interface DiscusskaoyankechengService extends IService<DiscusskaoyankechengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusskaoyankechengVO> selectListVO(Wrapper<DiscusskaoyankechengEntity> wrapper);
   	
   	DiscusskaoyankechengVO selectVO(@Param("ew") Wrapper<DiscusskaoyankechengEntity> wrapper);
   	
   	List<DiscusskaoyankechengView> selectListView(Wrapper<DiscusskaoyankechengEntity> wrapper);
   	
   	DiscusskaoyankechengView selectView(@Param("ew") Wrapper<DiscusskaoyankechengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusskaoyankechengEntity> wrapper);
   	
}

