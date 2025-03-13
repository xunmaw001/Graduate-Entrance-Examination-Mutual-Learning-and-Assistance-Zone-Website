package com.entity.view;

import com.entity.KaoyankechengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 考研课程
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-28 20:13:23
 */
@TableName("kaoyankecheng")
public class KaoyankechengView  extends KaoyankechengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KaoyankechengView(){
	}
 
 	public KaoyankechengView(KaoyankechengEntity kaoyankechengEntity){
 	try {
			BeanUtils.copyProperties(this, kaoyankechengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
