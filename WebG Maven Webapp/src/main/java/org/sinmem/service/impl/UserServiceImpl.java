package org.sinmem.service.impl;

import org.sinmem.bean.User;
import org.sinmem.dao.UserMapper;
import org.sinmem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl<T> implements UserService<T>{
	@Autowired
	UserMapper<T> userMapper;

	/**
	 * <p>用户登录操作, 传入用户泛型实体类,返回对应的用户信息</p>
	 */
	@Override
	public T login(T user) {
		return userMapper.selectByPrimaryKey(((User) user).getUserid());
	}

	/**
	 * <p>更新用户密码</p>
	 */
	@Override
	public boolean updatePwd(T user) {
		return userMapper.updateByPrimaryKeySelective(user)>0?true:false;
	}

	/**
	 * <p>获取用户信息</p>
	 */
	@Override
	public T getUserInfo(T user) {
		return userMapper.selectByPrimaryKey(((User) user).getUserid());
	}

	/**
	 * <p>更新用户信息</p>
	 */
	@Override
	public boolean updateUserInfo(T user) {
		return userMapper.updateByPrimaryKeySelective(user)>0?true:false;
	}

}
