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

	@Override
	public T login(T user) {
		return userMapper.selectByPrimaryKey(((User) user).getUserid());
	}

	@Override
	public boolean updatePwd(T user) {
		return userMapper.updateByPrimaryKeySelective(user)>0?true:false;
	}

	@Override
	public T getUserInfo(T user) {
		return userMapper.selectByPrimaryKey(((User) user).getUserid());
	}

	@Override
	public boolean updateUserInfo(T user) {
		return userMapper.updateByPrimaryKeySelective(user)>0?true:false;
	}

}
