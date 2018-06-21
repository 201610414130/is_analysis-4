package org.sinmem.service;

public interface UserService<T> {
	public T login(T user);
	
	public boolean updatePwd(T user);
	
	public T getUserInfo(T user);
	
	public boolean updateUserInfo(T user);
}
