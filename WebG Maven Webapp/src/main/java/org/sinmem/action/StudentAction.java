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

	public String get_S_Cs() {
		//当jsonStr为all是表示查询在校成绩
		if("all".equals(jsonStr))
			jsonStr = null;
		jsonObjMap.put("title", "add_selectCourseForSt");
		// 这里虽然传递的和存储的都是Integer类型的参数,但为了模糊查询,在sql语句是用的VACHER类型于是xml中用的是${param},而不是#{param,jdbctype}
		jsonObjMap.put("message", s_CServiceImpl.get_S_Cs(fKey, jsonStr == null?null:Integer.parseInt(jsonStr)));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}

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
		// 传过来的fkey是学生的班级号,其第5-9位便是专业号,用subString方法获取
		jsonObjMap.put("message", courseclassServiceImpl.getCourseclassesByMajor(fKey.substring(4, 9)));
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
