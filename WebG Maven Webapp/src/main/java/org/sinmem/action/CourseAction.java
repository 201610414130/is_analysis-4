package org.sinmem.action;

import org.sinmem.bean.Course;
import org.sinmem.service.impl.CourseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.GsonUtils;

@Controller
public class CourseAction extends BaseAction<Course>{
	@Autowired
	CourseServiceImpl courseServiceImpl;
	
	public String add_course(){
		// 设置主键,主键为majorno-oder,oder是顺序号,这里简单的定义为专业号相同时的课程号最大值加一
		StringBuilder pK = new StringBuilder(model.getMajorno());
		String id = courseServiceImpl.getMaxPkByMajorno(pK.toString());
		int oder = id==null?1:(Integer.parseInt(id.substring(5))+1);
		pK = oder<10?pK.append("00"):oder<100?pK.append("0"):pK;
		pK.append(oder);
		model.setCourseno(pK.toString());
		jsonObjMap.put("title","update_pwd");
		jsonObjMap.put("message", courseServiceImpl.saveARecord(model));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	public String del_course(){
		jsonObjMap.put("title","del_course");
		jsonObjMap.put("message", courseServiceImpl.del_Recode(model));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	public String update_course(){
		jsonObjMap.put("title","update_course");
		jsonObjMap.put("message", courseServiceImpl.upda_Recode(model));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
}
