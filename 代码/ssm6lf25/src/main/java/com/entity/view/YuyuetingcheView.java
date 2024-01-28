package com.entity.view;

import com.entity.YuyuetingcheEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预约停车
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
@TableName("yuyuetingche")
public class YuyuetingcheView  extends YuyuetingcheEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YuyuetingcheView(){
	}
 
 	public YuyuetingcheView(YuyuetingcheEntity yuyuetingcheEntity){
 	try {
			BeanUtils.copyProperties(this, yuyuetingcheEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
