package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KaoyankechengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KaoyankechengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KaoyankechengView;


/**
 * 考研课程
 *
 * @author 
 * @email 
 * @date 2021-01-28 20:13:23
 */
public interface KaoyankechengService extends IService<KaoyankechengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KaoyankechengVO> selectListVO(Wrapper<KaoyankechengEntity> wrapper);
   	
   	KaoyankechengVO selectVO(@Param("ew") Wrapper<KaoyankechengEntity> wrapper);
   	
   	List<KaoyankechengView> selectListView(Wrapper<KaoyankechengEntity> wrapper);
   	
   	KaoyankechengView selectView(@Param("ew") Wrapper<KaoyankechengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KaoyankechengEntity> wrapper);
   	
}

