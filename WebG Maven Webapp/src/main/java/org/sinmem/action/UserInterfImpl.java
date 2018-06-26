package org.sinmem.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.sinmem.bean.Teacher;
import org.sinmem.bean.User;
import org.sinmem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import utils.GsonUtils;
import utils.Sha;

public class UserInterfImpl<T> implements UserInterf<T>, SessionAware{
	protected String fKey;
	
	/**
	 * <dl>
	 * 	<dt>jsonStr</dt><dd>是用来前后台通信的json字符串名,前端通过它返回表单信息,后台通过它返回响应</dd>
	 * </dl>
	 */
	protected String jsonStr;
	protected Map<String, Object> sessionMap;
	protected Map<String, Object> jsonObjMap = new HashMap<String, Object>();
	@Autowired
	UserService<T> userService;

	@Override
	public boolean login(T user, Map<String, Object> sessionMap) {
		System.out.println("StudentAction:login");
		T tempUser = userService.login(user);
		if(tempUser ==null ){
			return false;
		}
		if(checkPwd(tempUser, user)){
			sessionMap.put("user", tempUser);
			System.out.println("-------\n登陆成功\n-------");
			return true;
		}else{
			System.out.println("-------\n登录失败\n-------");
			return false;
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
	public boolean update_Pwd(T user) {
		((User) user).setPwd(Sha.sha_pwd(((User) user).getPwd()));
		return userService.updatePwd(user);
	}

	@Override
	public boolean update_user(String data, Class<T> type) {
		T tempUser = (T) GsonUtils.fromJson(data, type);
		System.out.println("-----typeof->tempUser:------\n"+tempUser+"\n-------------");
		return userService.updateUserInfo(tempUser);
	}

	@Override
	public String get_MUserInfo(T user) {
		// 为了实现更为详细的不同的操作这里不能再user中进行查询
		return null;
	}

	protected boolean checkPwd(T queryUser, T inputUser){
		return ((User) queryUser).getPwd() == null ? ((User) inputUser).getPwd().equals(((User) queryUser).getUserid())
				: Sha.sha_pwd(((User) inputUser).getPwd()).equals(((User) queryUser).getPwd());
	}

	
	// setter/getter方法
	@Override
	public void setSession(Map<String, Object> session) {
		this.sessionMap = session;
	}

	public String getfKey() {
		return fKey;
	}

	public void setfKey(String fKey) {
		this.fKey = fKey;
	}

	public String getJsonStr() {
		return jsonStr;
	}

	public void setJsonStr(String jsonStr) {
		this.jsonStr = jsonStr;
	}
	
	
}
