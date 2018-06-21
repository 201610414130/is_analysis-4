package org.sinmem.service.impl;

import org.sinmem.bean.Admin;
import org.sinmem.dao.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl extends UserServiceImpl<Admin>{
	@Autowired
	AdminMapper adminMapper;
	
//	@Override
//	public Admin login(Admin admin) {
//		return adminMapper.selectByPrimaryKey(admin.getUserid());
//	}
//
//	@Override
//	public boolean updatePwd(Admin admin) {
//		return adminMapper.updateByPrimaryKeySelective(admin)>0?true:false;
//	}
//
//	@Override
//	public Admin getUserInfo(Admin admin) {
//		return null;
//	}
//
//	@Override
//	public boolean updateUserInfo(Admin admin) {
//		return adminMapper.updateByPrimaryKeySelective(admin)>0?true:false;
//	}
}
