package org.sinmem.action;

import java.util.HashMap;

import org.sinmem.bean.Student;
import org.sinmem.service.UserService;
import org.sinmem.service.impl.ClazzServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.GsonUtils;

@Controller
public class StudentAction extends UserInterfImpl<Student>{
	private String jsonStr;
	@Autowired
	UserService<Student> userService;
	@Autowired
	ClazzServiceImpl clazzServiceImpl;

//	@Override
//	public String update_user(String data) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public String get_MUserInfo(Student user) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		Student tempStudent = userService.getUserInfo(user);
		map.put("student", tempStudent);
		map.put("clazz", clazzServiceImpl.get_modle(tempStudent.getClazzno()));
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
