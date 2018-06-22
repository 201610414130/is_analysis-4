package org.sinmem.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.sinmem.bean.Institute;
import org.sinmem.dao.InstituteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InstituteServiceImpl extends BaseServiceImpl<Institute>{
	@Autowired
	InstituteMapper instituteMapper;
	
	@Override
	public Institute get_modle(String modleid) {
		return instituteMapper.selectByPrimaryKey(modleid);
	}
	
	@Override
	public boolean saveARecord(Institute modle) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int saveRecords(List<Institute> modles) {
		// TODO Auto-generated method stub
		return 0;
	}
}
