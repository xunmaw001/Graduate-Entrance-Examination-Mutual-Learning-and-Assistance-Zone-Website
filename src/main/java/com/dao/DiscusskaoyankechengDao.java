package com.dao;

import com.entity.DiscusskaoyankechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusskaoyankechengVO;
import com.entity.view.DiscusskaoyankechengView;


/**
 * 考研课程评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-28 20:13:23
 */
public interface DiscusskaoyankechengDao extends BaseMapper<DiscusskaoyankechengEntity> {
	
	List<DiscusskaoyankechengVO> selectListVO(@Param("ew") Wrapper<DiscusskaoyankechengEntity> wrapper);
	
	DiscusskaoyankechengVO selectVO(@Param("ew") Wrapper<DiscusskaoyankechengEntity> wrapper);
	
	List<DiscusskaoyankechengView> selectListView(@Param("ew") Wrapper<DiscusskaoyankechengEntity> wrapper);

	List<DiscusskaoyankechengView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusskaoyankechengEntity> wrapper);
	
	DiscusskaoyankechengView selectView(@Param("ew") Wrapper<DiscusskaoyankechengEntity> wrapper);
	
}
