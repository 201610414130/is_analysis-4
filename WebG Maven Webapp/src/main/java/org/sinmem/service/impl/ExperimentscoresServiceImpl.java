package org.sinmem.service.impl;

import java.util.ArrayList;

import org.sinmem.bean.Experimentscores;
import org.sinmem.dao.ExperimentscoresMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExperimentscoresServiceImpl extends BaseServiceImpl<Experimentscores>{
	@Autowired
	ExperimentscoresMapper experimentscoresMapper;
	
	
	/**
	 * 为学生查询他的某门课程实验成绩单列表
	 * @param fKey 拼接的成绩单号(模糊掉课程实验号的6位数字)
	 * @return
	 */
	public ArrayList<Experimentscores> getES_WLPkForSt(String fKey){
		return experimentscoresMapper.getES_WLPkForSt(fKey);
	}
	
	@Override
	public boolean saveARecord(Experimentscores modle) {
		return experimentscoresMapper.insertSelective(modle)>0?true:false;
	}
}
