package org.sinmem.action;

import java.util.ArrayList;

import org.sinmem.bean.Major;
import org.sinmem.service.impl.MajorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.GsonUtils;

@Controller
public class MajorAction extends BaseAction<Major>{
	@Autowired
	MajorServiceImpl majorServiceImpl;
	
	public String get_majors(){
		ArrayList<Major> tempMajors = majorServiceImpl.get_modles(fKey);
		jsonObjMap.put("title", "update_pwdResponse");
		jsonObjMap.put("message", tempMajors.size()<1?false:true);
		jsonObjMap.put("major", tempMajors);
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	
}
