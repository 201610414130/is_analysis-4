package org.sinmem.service.impl;

import java.util.ArrayList;

import org.sinmem.bean.Course;
import org.sinmem.bean.Major;
import org.sinmem.dao.CourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseServiceImpl extends BaseServiceImpl<Course>{
	@Autowired
	CourseMapper courseMapper;
	
	public String getMaxPkByMajorno(String majorno){
		return courseMapper.getMaxPkByMajorno(majorno);
	}
	
	@Override
	public boolean saveARecord(Course modle) {
		return courseMapper.insert(modle)>0?true:false;
	}
	
	@Override
	public int del_Recode(Course course) {
		return courseMapper.deleteByPrimaryKey(course.getCourseno());
	}

	@Override
	public int upda_Recode(Course course) {
		return courseMapper.updateByPrimaryKeySelective(course);
	}
	
	@Override
	public ArrayList<Course> get_modles(String privateid) {
		return courseMapper.getCoursesByPk(privateid);
	}
}
