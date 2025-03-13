package com.dao;

import com.entity.KaoyanfenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KaoyanfenleiVO;
import com.entity.view.KaoyanfenleiView;


/**
 * 考研分类
 * 
 * @author 
 * @email 
 * @date 2021-01-28 20:13:23
 */
public interface KaoyanfenleiDao extends BaseMapper<KaoyanfenleiEntity> {
	
	List<KaoyanfenleiVO> selectListVO(@Param("ew") Wrapper<KaoyanfenleiEntity> wrapper);
	
	KaoyanfenleiVO selectVO(@Param("ew") Wrapper<KaoyanfenleiEntity> wrapper);
	
	List<KaoyanfenleiView> selectListView(@Param("ew") Wrapper<KaoyanfenleiEntity> wrapper);

	List<KaoyanfenleiView> selectListView(Pagination page,@Param("ew") Wrapper<KaoyanfenleiEntity> wrapper);
	
	KaoyanfenleiView selectView(@Param("ew") Wrapper<KaoyanfenleiEntity> wrapper);
	
}
