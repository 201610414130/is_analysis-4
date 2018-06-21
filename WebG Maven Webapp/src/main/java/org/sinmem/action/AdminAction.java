package org.sinmem.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.sinmem.bean.Admin;
import org.sinmem.bean.Teacher;
import org.sinmem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.Sha;

@Controller
public class AdminAction extends UserInterfImpl<Admin>{
	private String jsonStr;
	@Autowired
	UserService<Admin> userService;
	
	@Override
	public String update_user(Admin user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String get_MUserInfo(Admin user) {
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
