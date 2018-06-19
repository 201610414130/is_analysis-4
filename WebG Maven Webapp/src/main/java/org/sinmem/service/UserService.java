package org.sinmem.service;

public interface UserService<T> {
	public T login(T t);
	
	public String getPwd(T t);
	
	public void updatePwd(T t);
	
	public T getUserInfo(String id);
	
	public void updateUserInfo(T t);
}
