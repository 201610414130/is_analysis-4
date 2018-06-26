package org.sinmem.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.sinmem.bean.Major;
import org.sinmem.service.BaseService;
import org.springframework.stereotype.Service;

@Service
public class BaseServiceImpl<T> implements BaseService<T>{

	@Override
	public T get_modle(String modleid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean saveARecord(T modle) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int saveRecords(List<T> modles) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<T> get_modles(String privateid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int del_Recode(T modle) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int upda_Recode(T modle) {
		// TODO Auto-generated method stub
		return 0;
	}



}
