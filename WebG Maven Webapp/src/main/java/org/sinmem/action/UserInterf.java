package org.sinmem.action;

import java.util.Map;

import org.springframework.stereotype.Controller;

@Controller
public interface UserInterf<T> {
	/**
	 * <dl>
	 * 	<dt>用户登录 </dt>
	 * 	<dd>根据传过来的userid获取数据库中的相关用户,再通过utli.Sha比较密码是否正确,如果正确返回登陆成功并将用户写入session,否则返回登录失败</dd>
	 * </dl>
	 * @param t 用户实体
	 * @return 操作执行状态
	 */
	public String login(T user, Map<String, Object> sessionMap);
	
	
	/**
	 * <dl>
	 * 	<dt>检测旧密码</dt>
	 * 	<dd>在修改密码请求前的ajax请求API实现,用旧密码验证用户是否本人操作</dd>
	 * </dl>
	 * @param user 用户实体
	 * @return 操作执行状态
	 */
	public boolean check_lastPwd(T user);
	
	
	/**
	 * <dl>
	 * 	<dt>修改密码</dt>
	 * 	<dd>通过提交过来的userid将其对应的pwd字段进行更新</dd>
	 * </dl>
	 * @param user 用户实体
	 * @return 操作执行状态
	 */
	public String update_Pwd(T user);
	
	
	/**
	 * <dl>
	 * 	<dt>更新用户信息</dt>
	 * 	<dd>通过userid更新用户信息,现阶段仅ganme字段课更新</dd>
	 * </dl>
	 * @param user 用户实体
	 * @return 操作执行状态
	 */
	public String update_user(T user);
	
	
	/**
	 * <dl>
	 * 	<dt>获取用户信息信息</dt>
	 * 	<dd>通过userid获取用户的个人详细信息以及院系专业等信息</dd>
	 * </dl>
	 * @param user 用户实体
	 * @return 操作执行状态
	 */
	public String get_MUserInfo(T user);
}
