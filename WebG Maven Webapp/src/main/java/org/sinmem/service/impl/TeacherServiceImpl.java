package org.sinmem.service.impl;

import org.sinmem.bean.Teacher;
import org.sinmem.dao.TeacherMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherServiceImpl extends UserServiceImpl<Teacher>{
	@Autowired
	TeacherMapper teacherMapper;
	
//	@Override
//	public Teacher login(Teacher teacher) {
//		return teacherMapper.selectByPrimaryKey(teacher.getUserid());
//	}
//
//	@Override
//	public boolean updatePwd(Teacher teacher) {
//		return teacherMapper.updateByPrimaryKeySelective(teacher)>0?true:false;
//	}
//
//	@Override
//	public Teacher getUserInfo(Teacher teacher) {
//		return null;
//	}
//
//	@Override
//	public boolean updateUserInfo(Teacher teacher) {
//		return teacherMapper.updateByPrimaryKeySelective(teacher)>0?true:false;
//	}
}
