package org.sinmem.service.impl;

import java.util.ArrayList;

import org.sinmem.bean.Courseclass;
import org.sinmem.dao.CourseclassMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseclassServiceImpl extends BaseServiceImpl<Courseclass>{
	@Autowired 
	CourseclassMapper courseclassMapper;
	
	@Override
	public boolean saveARecord(Courseclass modle) {
		return courseclassMapper.insertSelective(modle)>0?true:false;
	}
	
	public ArrayList<Courseclass> getCourseclassesByMajor(String majorno){
		return courseclassMapper.getCourseclassesByMajor(majorno);
	}
	public CourseclassServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * 
	 * @param teacherno 教师工号
	 * @param trem 开课学期
	 * @return
	 */
	public ArrayList<Courseclass> getCourseclassesWLteacher(String teacherno,Integer trem){
		return courseclassMapper.getCourseclassesWLteacher(teacherno, trem);
	}
}
