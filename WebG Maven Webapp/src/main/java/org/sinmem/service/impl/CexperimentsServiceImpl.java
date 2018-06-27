package org.sinmem.service.impl;

import org.sinmem.bean.Cexperiments;
import org.sinmem.dao.CexperimentsMapper;
import org.sinmem.dao.ExperimentclausesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CexperimentsServiceImpl  extends BaseServiceImpl<Cexperiments>{
	@Autowired
	CexperimentsMapper cexperimentsMapper;
	@Autowired
	ExperimentclausesMapper experimentclausesMapper;
	
	public Cexperiments get_modle(String experimentscoresno, String experimentno) {
		return cexperimentsMapper.selectByPrimaryKey(experimentscoresno, experimentno);
	}
	/**
	 * 
	 * @param cexperiments 需要保存的数据
	 * @return 保存两次保存操作的保存数据记录数相乘的值,其值不为零返回真
	 */
	public boolean addCexperiments(Cexperiments cexperiments){
		return cexperimentsMapper.insertSelective(cexperiments)*experimentclausesMapper.insertBatch(cexperiments.getExperimentclausesList())!=0?true:false;
	}
}
