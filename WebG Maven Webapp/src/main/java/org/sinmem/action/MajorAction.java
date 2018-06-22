package org.sinmem.action;

import java.util.ArrayList;

import org.sinmem.bean.Major;
import org.sinmem.service.impl.MajorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.GsonUtils;

@Controller
public class MajorAction extends BaseAction<Major>{
	private String instituteNo;
	@Autowired
	MajorServiceImpl majorServiceImpl;
	
	public String get_majors(){
		ArrayList<Major> tempMajors = majorServiceImpl.get_modles(instituteNo);
		jsonObjMap.put("title", "update_pwdResponse");
		jsonObjMap.put("message", tempMajors.size()<1?false:true);
		jsonObjMap.put("major", tempMajors);
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	
	//以下setter/getter
	
	public String getInstituteNo() {
		return instituteNo;
	}
	
	public void setInstituteNo(String instituteNo) {
		this.instituteNo = instituteNo;
	}
	
}
