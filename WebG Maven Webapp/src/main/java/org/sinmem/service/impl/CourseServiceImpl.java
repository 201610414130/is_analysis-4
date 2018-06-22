package org.sinmem.service.impl;

import org.sinmem.bean.Course;
import org.sinmem.dao.CourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseServiceImpl extends BaseServiceImpl<Course>{
	@Autowired
	CourseMapper courseMapper;
	
	@Override
	public boolean saveARecord(Course modle) {
		return courseMapper.insert(modle)>0?true:false;
	}
	
	public String getMaxPkByMajorno(String majorno){
		return courseMapper.getMaxPkByMajorno(majorno);
	}
	
	@Override
	public int del_Recode(Course course) {
		return courseMapper.deleteByPrimaryKey(course.getCourseno());
	}

	@Override
	public int upda_Recode(Course course) {
		return courseMapper.updateByPrimaryKeySelective(course);
	}
}
