package com.dao;

import com.entity.KaoyankechengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KaoyankechengVO;
import com.entity.view.KaoyankechengView;


/**
 * 考研课程
 * 
 * @author 
 * @email 
 * @date 2021-01-28 20:13:23
 */
public interface KaoyankechengDao extends BaseMapper<KaoyankechengEntity> {
	
	List<KaoyankechengVO> selectListVO(@Param("ew") Wrapper<KaoyankechengEntity> wrapper);
	
	KaoyankechengVO selectVO(@Param("ew") Wrapper<KaoyankechengEntity> wrapper);
	
	List<KaoyankechengView> selectListView(@Param("ew") Wrapper<KaoyankechengEntity> wrapper);

	List<KaoyankechengView> selectListView(Pagination page,@Param("ew") Wrapper<KaoyankechengEntity> wrapper);
	
	KaoyankechengView selectView(@Param("ew") Wrapper<KaoyankechengEntity> wrapper);
	
}
