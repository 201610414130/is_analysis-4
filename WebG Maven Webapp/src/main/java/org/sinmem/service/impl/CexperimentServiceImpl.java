package org.sinmem.service.impl;

import java.util.ArrayList;

import org.sinmem.bean.Cexperiment;
import org.sinmem.bean.Experimentclause;
import org.sinmem.dao.CexperimentMapper;
import org.sinmem.dao.ExperimentclauseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CexperimentServiceImpl extends BaseServiceImpl<Cexperiment>{
	@Autowired
	CexperimentMapper cexperimentMapper;
	@Autowired
	ExperimentclauseMapper experimentclauseMapper;
	
	@Override
	public boolean saveARecord(Cexperiment modle) {
		return cexperimentMapper.insertSelective(modle) * experimentclauseMapper.insertBatch(modle.getExperimentclauseList()) != 0 ? true:false;
	}
	
	@Override
	public Cexperiment get_modle(String modleid) {
		Cexperiment temp = cexperimentMapper.selectByPrimaryKey(modleid);
		temp.setExperimentclauseList(experimentclauseMapper.get_ECByFk(modleid));
		return temp;
	}
	
	@Override
	public ArrayList<Cexperiment> get_modles(String privateid) {
		ArrayList<Cexperiment> temp = cexperimentMapper.get_modles(privateid);
		for (Cexperiment cexperiment : temp) {
			cexperiment.setExperimentclauseList(experimentclauseMapper.get_ECByFk(cexperiment.getExperimentno()));
		}
		return temp;
	}
}
