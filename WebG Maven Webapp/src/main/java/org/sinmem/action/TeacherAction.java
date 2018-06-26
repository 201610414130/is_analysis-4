package org.sinmem.action;

import java.util.HashMap;
import java.util.List;

import org.sinmem.bean.Courseclass;
import org.sinmem.bean.Major;
import org.sinmem.bean.Teacher;
import org.sinmem.service.UserService;
import org.sinmem.service.impl.CourseServiceImpl;
import org.sinmem.service.impl.CourseclassServiceImpl;
import org.sinmem.service.impl.InstituteServiceImpl;
import org.sinmem.service.impl.MajorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.GsonUtils;

@Controller
public class TeacherAction extends UserInterfImpl<Teacher>{
	@Autowired
	UserService<Teacher> userService;
	@Autowired
	InstituteServiceImpl instituteServiceImpl;
	@Autowired
	MajorServiceImpl majorServiceImpl;
	@Autowired
	CourseServiceImpl courseServiceImpl;
	@Autowired
	CourseclassServiceImpl courseclassServiceImpl;
	
	public String get_courseForTe() {
		Major major = majorServiceImpl.get_modle(fKey);
		List courses = courseServiceImpl.get_modles(fKey);
		jsonObjMap.put("title", "get_courseForTeacher");
		jsonObjMap.put("message", courses==null?false:true);
		jsonObjMap.put("course", courses);
		jsonObjMap.put("major", major);
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	public String add_selectCourseForTe() {
//		System.out.println("add_selectCourseForTe: "+jsonStr);
		Courseclass courseclass = GsonUtils.fromJson(jsonStr, Courseclass.class);
		// 用stringBuilder生成开课班号
		StringBuilder cClassNo = new StringBuilder(courseclass.getTerm().toString());
		cClassNo.append(courseclass.getCourseno());
		cClassNo.append(courseclass.getTeacherno());
		courseclass.setCclassno(cClassNo.toString());
		jsonObjMap.put("title", "add_selectCourseForTe");
		jsonObjMap.put("message", courseclassServiceImpl.saveARecord(courseclass));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	@Override
	public String get_MUserInfo(Teacher user) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		Teacher tempTeacher = userService.getUserInfo(user);
		map.put("user", tempTeacher);
		map.put("major", majorServiceImpl.get_modle(tempTeacher.getMajorno()));
		map.put("institute", instituteServiceImpl.get_modle(tempTeacher.getInstituteno()));
		return GsonUtils.toJson(map);
	}

	// setter/getter
}
