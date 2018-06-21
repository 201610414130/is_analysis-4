package org.sinmem.dao;

import org.sinmem.bean.User;

public interface UserMapper<T> {
	/**
	 * <p>查找用户操作</p>
	 * @param userid
	 * @return
	 */
	T selectByPrimaryKey(String userid);
	
	
	/**
	 * <p>更新用户信息操作</p>
	 * @param user
	 * @return
	 */
	int updateByPrimaryKeySelective(T user);
}
