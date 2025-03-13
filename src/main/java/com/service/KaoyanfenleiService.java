package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KaoyanfenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KaoyanfenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KaoyanfenleiView;


/**
 * 考研分类
 *
 * @author 
 * @email 
 * @date 2021-01-28 20:13:23
 */
public interface KaoyanfenleiService extends IService<KaoyanfenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KaoyanfenleiVO> selectListVO(Wrapper<KaoyanfenleiEntity> wrapper);
   	
   	KaoyanfenleiVO selectVO(@Param("ew") Wrapper<KaoyanfenleiEntity> wrapper);
   	
   	List<KaoyanfenleiView> selectListView(Wrapper<KaoyanfenleiEntity> wrapper);
   	
   	KaoyanfenleiView selectView(@Param("ew") Wrapper<KaoyanfenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KaoyanfenleiEntity> wrapper);
   	
}

