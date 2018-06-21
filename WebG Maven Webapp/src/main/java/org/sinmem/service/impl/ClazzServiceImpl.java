package org.sinmem.service.impl;

import java.util.List;

import org.sinmem.bean.Clazz;
import org.sinmem.dao.ClazzMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClazzServiceImpl extends BaseServiceImpl<Clazz>{
	@Autowired
	ClazzMapper clazzMapper;

	@Override
	public Clazz get_modle(String modleid) {
		return clazzMapper.selectByPrimaryKey(modleid);
	}

	@Override
	public boolean saveARecord(Clazz modle) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int saveRecords(List<Clazz> modles) {
		// TODO Auto-generated method stub
		return 0;
	}
}
