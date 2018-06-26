package org.sinmem.action;

import java.util.HashMap;

import org.sinmem.bean.Clazz;
import org.sinmem.bean.S_c;
import org.sinmem.bean.Student;
import org.sinmem.service.UserService;
import org.sinmem.service.impl.ClazzServiceImpl;
import org.sinmem.service.impl.CourseclassServiceImpl;
import org.sinmem.service.impl.S_CServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.GsonUtils;

@Controller
public class StudentAction extends UserInterfImpl<Student>{
	@Autowired
	UserService<Student> userService;
	@Autowired
	ClazzServiceImpl clazzServiceImpl;
	@Autowired
	CourseclassServiceImpl courseclassServiceImpl;
	@Autowired
	S_CServiceImpl s_CServiceImpl;

//	@Override
//	public String update_user(String data) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public String get_MUserInfo(Student user) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		Student tempStudent = userService.getUserInfo(user);
		Clazz clazz = clazzServiceImpl.get_modle(tempStudent.getClazzno());
		map.put("student", tempStudent);
		map.put("clazz", clazz);
		return GsonUtils.toJson(map);
	}
	
	public String get_courseClass(){
		jsonObjMap.put("title", "get_courseClass");
		jsonObjMap.put("message", courseclassServiceImpl.getCourseclassesByMajor(clazzServiceImpl.get_modle(fKey).getMajorno()));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		System.out.println(jsonStr);
		return "ok";
	}
	
	public String add_selectCourseForSt(){
		S_c s_c = GsonUtils.fromJson(jsonStr, S_c.class);
		jsonObjMap.put("title", "add_selectCourseForSt");
		jsonObjMap.put("message", s_CServiceImpl.saveARecord(s_c));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	// setter/getter
}
