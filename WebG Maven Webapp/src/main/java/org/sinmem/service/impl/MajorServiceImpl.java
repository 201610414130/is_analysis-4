package org.sinmem.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.sinmem.bean.Institute;
import org.sinmem.bean.Major;
import org.sinmem.dao.MajorMapper;
import org.sinmem.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MajorServiceImpl extends BaseServiceImpl<Major>{
	@Autowired
	MajorMapper majorMapper;
	
	@Override
	public Major get_modle(String modleid) {
		return majorMapper.selectByPrimaryKey(modleid);
	}

	@Override
	public ArrayList<Major> get_modles(String privateid) {
		return majorMapper.selectMajorsByinstituteNo(privateid);
	}
	
	
	@Override
	public boolean saveARecord(Major modle) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int saveRecords(List<Major> modles) {
		// TODO Auto-generated method stub
		return 0;
	}
}
