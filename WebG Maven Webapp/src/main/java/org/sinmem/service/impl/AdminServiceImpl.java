package org.sinmem.service.impl;

import org.sinmem.bean.Admin;
import org.sinmem.dao.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl extends UserServiceImpl<Admin>{
	@Autowired
	AdminMapper adminMapper;
	
	@Override
	public Admin login(Admin admin) {
		return adminMapper.selectByPrimaryKey(admin.getUserid());
	}

	@Override
	public void updatePwd(Admin admin) {
		adminMapper.updateByPrimaryKeySelective(admin);
	}

	@Override
	public Admin getUserInfo(String id) {
		return null;
	}

	@Override
	public void updateUserInfo(Admin t) {
		
	}
}
