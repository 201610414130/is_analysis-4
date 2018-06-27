package org.sinmem.service.impl;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;

import org.sinmem.bean.S_c;
import org.sinmem.dao.S_cMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class S_CServiceImpl extends BaseServiceImpl<S_c>{
	@Autowired
	S_cMapper s_cMapper;
	
	@Override
	public boolean saveARecord(S_c modle) {
		return s_cMapper.insertSelective(modle)>0?true:false;
	}
	
	@Override
	public ArrayList<S_c> get_modles(String privateid) {
		return s_cMapper.getS_cWLcClassNo(privateid);
	}
}
