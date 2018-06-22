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
	public Clazz get_modle(String clazzid) {
		return clazzMapper.selectByPrimaryKey(clazzid);
	}

	@Override
	public boolean saveARecord(Clazz modle) {
		return false;
	}

	@Override
	public int saveRecords(List<Clazz> modles) {
		return 0;
	}
}
