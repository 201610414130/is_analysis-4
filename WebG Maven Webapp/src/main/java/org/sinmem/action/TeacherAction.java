package org.sinmem.action;

import java.util.HashMap;

import org.sinmem.bean.Student;
import org.sinmem.bean.Teacher;
import org.sinmem.service.UserService;
import org.sinmem.service.impl.InstituteServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.GsonUtils;

@Controller
public class TeacherAction extends UserInterfImpl<Teacher>{
	private String jsonStr;
	@Autowired
	UserService<Teacher> userService;
	@Autowired
	InstituteServiceImpl instituteServiceImpl;
	
//	@Override
//	public String update_user(String data) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public String get_MUserInfo(Teacher user) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		Teacher tempTeacher = userService.getUserInfo(user);
		map.put("student", tempTeacher);
		map.put("clazz", instituteServiceImpl.get_modle(tempTeacher.getInstituteno()));
		return GsonUtils.toJson(map);
	}

	// setter/getter
	public String getJsonstr() {
		return jsonStr;
	}


	public void setJsonstr(String jsonStr) {
		this.jsonStr = jsonStr;
	}
}
