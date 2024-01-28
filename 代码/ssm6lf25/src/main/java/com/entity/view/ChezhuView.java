package com.entity.view;

import com.entity.ChezhuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 车主
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-01 09:39:12
 */
@TableName("chezhu")
public class ChezhuView  extends ChezhuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ChezhuView(){
	}
 
 	public ChezhuView(ChezhuEntity chezhuEntity){
 	try {
			BeanUtils.copyProperties(this, chezhuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
