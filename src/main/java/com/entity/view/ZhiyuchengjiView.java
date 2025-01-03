package com.entity.view;

import com.entity.ZhiyuchengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 智育成绩
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-21 12:11:49
 */
@TableName("zhiyuchengji")
public class ZhiyuchengjiView  extends ZhiyuchengjiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhiyuchengjiView(){
	}
 
 	public ZhiyuchengjiView(ZhiyuchengjiEntity zhiyuchengjiEntity){
 	try {
			BeanUtils.copyProperties(this, zhiyuchengjiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
