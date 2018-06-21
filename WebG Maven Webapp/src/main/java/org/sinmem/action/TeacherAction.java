package org.sinmem.action;

import org.sinmem.bean.Teacher;
import org.sinmem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class TeacherAction extends UserInterfImpl<Teacher>{
	private String jsonStr;
	@Autowired
	UserService<Teacher> userService;
	
	@Override
	public String update_user(Teacher user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String get_MUserInfo(Teacher user) {
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
