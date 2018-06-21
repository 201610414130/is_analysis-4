package org.sinmem.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.sinmem.bean.Teacher;
import org.sinmem.bean.User;
import org.sinmem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import utils.Sha;

public class UserInterfImpl<T> implements UserInterf<T>, SessionAware{
	private Map<String, Object> sessionMap;
	@Autowired
	UserService<T> userService;

	@Override
	public String login(T user, Map<String, Object> sessionMap) {
		System.out.println("StudentAction:login");
		T tempUser = userService.login(user);
		if(tempUser ==null ){
			return null;
		}
		if(checkPwd(tempUser, user)){
			sessionMap.put("user", tempUser);
			System.out.println("-------\n登陆成功\n-------");
			return "success";
		}else{
			System.out.println("-------\n登录失败\n-------");
			return null;
		}
	}

	@Override
	public boolean check_lastPwd(T user) {
		T tempUser = userService.login(user);
		if(tempUser ==null ){
			return false;
		}
		return checkPwd(tempUser, user);
	}

	@Override
	public String update_Pwd(T user) {
		((User) user).setPwd(Sha.sha_pwd(((User) user).getPwd()));
		userService.updatePwd(user);
		return "success";
	}

	@Override
	public String update_user(T user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String get_MUserInfo(T user) {
		// TODO Auto-generated method stub
		return null;
	}

	protected boolean checkPwd(T queryUser, T inputUser){
		return ((User) queryUser).getPwd() == null ? ((User) inputUser).getPwd().equals(((User) queryUser).getUserid())
				: Sha.sha_pwd(((User) inputUser).getPwd()).equals(((User) queryUser).getPwd());
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.sessionMap = session;
	}
}
