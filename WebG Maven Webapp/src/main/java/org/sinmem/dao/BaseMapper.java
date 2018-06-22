package org.sinmem.dao;

import org.sinmem.bean.Teacher;

public interface BaseMapper<T> {
	/**
	 * <p>查找实体类操作</p>
	 * @param userid
	 * @return
	 */
	T selectByPrimaryKey(String modleid);
	
	
	/**
	 * <p>更新实体类操作</p>
	 * @param user
	 * @return
	 */
	int updateByPrimaryKeySelective(T modle);
	
	
	/**
	 * <p>插入实体类操作</p>
	 * @param user
	 * @return
	 */
	int insertSelective(T record);
}
