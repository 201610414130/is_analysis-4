package org.sinmem.action;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.SessionAware;
import org.sinmem.bean.Admin;
import org.sinmem.bean.Student;
import org.sinmem.bean.Teacher;
import org.sinmem.bean.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import utils.GsonUtils;
import utils.SecretKeyUtil;

@Controller
public class UserAction extends ActionSupport implements SessionAware{
	private String data;
	private int type;
	private Map<String, Object> sessionMap;
	protected String jsonStr;//需要传输的json
	protected Map<String, Object> jsonObjMap = new HashMap<String, Object>();
	HttpServletRequest request;
	User user;
	
	@Autowired
	UserInterf<Admin> admInterf;
	@Autowired
	UserInterf<Teacher> teaInterf;
	@Autowired
	UserInterf<Student> stuInterf;
	
	UserInterf userInterf;
	
	public String get_publicKey(){
		jsonObjMap.put("title", "get_publicKey");
		jsonObjMap.put("message", true);
		jsonObjMap.put("publicKey", SecretKeyUtil.getPublicKey());
		sessionMap.put("publicKey", SecretKeyUtil.getPublicKey());
		jsonStr=GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	
	/**
	 * <dl>
	 * 	<dt>用户登录 </dt>
	 * 	<dd>根据传过来的userid获取数据库中的相关用户,再通过utli.Sha比较密码是否正确,如果正确返回登陆成功并将用户写入session,否则返回登录失败</dd>
	 * </dl>
	 * @return 操作执行状态
	 */
	public String login(){
		/* 要在此处最好能够根据类型自动调用到studentAction,teacher~,admin~等三个action的登录方法
		 * 这里传一个user实体(类型不确定),直接根据他的类型调用三个action
		 */
		generatorEntity();
		jsonObjMap.put("title", "loginResponse");
		jsonObjMap.put("message", userInterf.login(user, sessionMap));
		jsonStr=GsonUtils.toJson(jsonObjMap);
		System.out.println("--jsonStr---\n"+jsonStr+"\n--------");
		return "ok";
	}
	
	/**
	 * <dl>
	 * 	<dt>用户登出</dt>
	 * 	<dd>有用户提交登出请求,控制端将于客户端的session删除,是登出后刷新不能获取到登出前的任何信息</dd>
	 * </dl>
	 * @return 操作执行状态
	 */
	public String logout(){
		sessionMap.clear();
		jsonObjMap.put("title", "logoutResponse");
		jsonObjMap.put("message", true);
		jsonStr=GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	
	/**
	 * <dl>
	 * 	<dt>检测旧密码</dt>
	 * 	<dd>在修改密码请求前的ajax请求API实现,用旧密码验证用户是否本人操作</dd>
	 * </dl>
	 * @return 操作执行状态
	 */
	public String check_lastPwd(){
		generatorEntity();
		jsonObjMap.put("title", "check_lastPwdResponse");
		jsonObjMap.put("message", userInterf.check_lastPwd(user));
		jsonStr=GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	
	/**
	 * <dl>
	 * 	<dt>修改密码</dt>
	 * 	<dd>通过提交过来的userid将其对应的pwd字段进行更新</dd>
	 * </dl>
	 * @return 操作执行状态
	 */
	public String update_Pwd(){
		generatorEntity();
		jsonObjMap.put("title", "update_PwdResponse");
		jsonObjMap.put("message", userInterf.update_Pwd(user));
		jsonStr=GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	
	/**
	 * <dl>
	 * 	<dt>更新用户信息</dt>
	 * 	<dd>通过userid更新用户信息,现阶段仅ganme字段课更新</dd>
	 * </dl>
	 * @return 操作执行状态
	 */
	public String update_user(){
		System.out.println("\n\n---------------\ndata"+data);
		System.out.println("\n\n---------------\ntype"+type);
		Class clazz = null;
		switch (type) {
		case 1:
			clazz = Admin.class;
			userInterf = admInterf;
			break;
		case 2:
			clazz = Teacher.class;
			userInterf = teaInterf;
			break;
		case 3:
			clazz = Student.class;
			userInterf = stuInterf;
			break;
		default:
			System.out.println("---------\n用户类型错误\n---------");
			break;
		}
		jsonObjMap.put("title", "update_userResponse");
		jsonObjMap.put("message", userInterf.update_user(data, clazz));
		jsonStr=GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	
	/**
	 * <dl>
	 * 	<dt>获取用户信息信息</dt>
	 * 	<dd>通过userid获取用户的个人详细信息以及院系专业等信息</dd>
	 * </dl>
	 * @return 操作执行状态
	 */
	public String get_MUserInfo(){
		generatorEntity();
		String tempString = userInterf.get_MUserInfo(user);
		jsonObjMap.put("title", "get_MUserInfoResponse");
		jsonObjMap.put("message", tempString==null?false:true);
		jsonObjMap.put("data",tempString);
		jsonStr=GsonUtils.toJson(jsonObjMap);
		return "ok";
	}

	/**
	 * <dl>
	 * 	<dt>生成实体类</dt>
	 * 	<dd>解析传过来的信息生成实体类</dd>
	 * </dl>
	 */
	private void generatorEntity(){
		System.out.println("\n\n---------------\nUserAction：login");
		System.out.println("\n\n---------------\ndata"+data);
		System.out.println("\n\n---------------\ntype"+type);
		// 由于*Action里面的services是自动装入的,所以这里为userInterf赋值不能重新实例化一个*Action的controller
		switch (type) {
		case 1:
			userInterf = admInterf;
			user = GsonUtils.fromJson(data, Admin.class);
			break;
		case 2:
			userInterf = teaInterf;
			user = GsonUtils.fromJson(data, Teacher.class);
			break;
		case 3:
			userInterf = stuInterf;
			user = GsonUtils.fromJson(data, Student.class);
			break;
		default:
			System.out.println("---------\n用户类型错误\n---------");
			break;
		}
	}


	
	@Override
	public void setSession(Map<String, Object> session) {
		this.sessionMap = session;
	}
	
	
	// 以下是页面跳转
	public String tologin(){
		return "ok";
	}
	
	
	// 以下为setter/getter方法区域
	public String getData() {
		return data;
	}


	public void setData(String data) {
		this.data = data;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
	}


	public String getJsonstr() {
		return jsonStr;
	}


	public void setJsonstr(String jsonStr) {
		this.jsonStr = jsonStr;
	}


}
