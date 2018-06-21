package org.sinmem.service.impl;

import org.sinmem.bean.Student;
import org.sinmem.dao.StudentMapper;
import org.sinmem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl extends UserServiceImpl<Student>{
	@Autowired
	StudentMapper studentMapper;
	
	@Override
	public Student login(Student student) {
		return studentMapper.selectByPrimaryKey(student.getUserid());
	}

	@Override
	public void updatePwd(Student student) {
		studentMapper.updateByPrimaryKeySelective(student);
	}

	@Override
	public Student getUserInfo(String id) {
		return studentMapper.selectByPrimaryKey(id);
	}

	@Override
	public void updateUserInfo(Student student) {
		
	}

}
