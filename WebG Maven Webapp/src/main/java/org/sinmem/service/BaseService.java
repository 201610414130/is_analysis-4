package org.sinmem.service;

import java.util.ArrayList;
import java.util.List;

import org.sinmem.bean.Major;

public interface BaseService<T> {
	// 根据id获取模型
	public T get_modle(String modleid);
	// 保存一条记录
	public boolean saveARecord(T modle);
	// 批量保存记录
	public int saveRecords(List<T> modles);
	int upda_Recode(T modle);
	int del_Recode(T modle);
	ArrayList<T> get_modles(String privateid);
}
