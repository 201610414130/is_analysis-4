package org.sinmem.service.impl;

import org.sinmem.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl<T> implements UserService<T>{

	@Override
	public T login(T t) {
		return null;
	}

	@Override
	public void updatePwd(T t) {
		
	}

	@Override
	public T getUserInfo(String id) {
		return null;
	}

	@Override
	public void updateUserInfo(T t) {
		
	}

}
