package org.sinmem.service.impl;

import org.sinmem.bean.Teacher;
import org.sinmem.dao.TeacherMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherServiceImpl extends UserServiceImpl<Teacher>{
	@Autowired
	TeacherMapper teacherMapper;
	
	@Override
	public Teacher login(Teacher teacher) {
		return teacherMapper.selectByPrimaryKey(teacher.getUserid());
	}

	@Override
	public void updatePwd(Teacher teacher) {
		teacherMapper.updateByPrimaryKeySelective(teacher);
	}

	@Override
	public Teacher getUserInfo(String id) {
		return null;
	}

	@Override
	public void updateUserInfo(Teacher t) {
		
	}
}
