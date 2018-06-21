package org.sinmem.action;

import org.sinmem.bean.Student;
import org.sinmem.bean.User;
import org.sinmem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.Sha;

@Controller
public class StudentAction extends UserInterfImpl<Student>{
	private String jsonStr;
	@Autowired
	UserService<Student> userService;

	@Override
	public String update_user(Student user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String get_MUserInfo(Student user) {
		// TODO Auto-generated method stub
		return null;
	}

	// setter/getter
	public String getJsonstr() {
		return jsonStr;
	}


	public void setJsonstr(String jsonStr) {
		this.jsonStr = jsonStr;
	}
}
