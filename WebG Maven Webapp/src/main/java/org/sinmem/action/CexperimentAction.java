package org.sinmem.action;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import org.sinmem.bean.Cexperiment;
import org.sinmem.bean.Cexperiments;
import org.sinmem.bean.Experimentclause;
import org.sinmem.bean.Experimentclauses;
import org.sinmem.bean.Experimentscores;
import org.sinmem.service.impl.CexperimentServiceImpl;
import org.sinmem.service.impl.CexperimentsServiceImpl;
import org.sinmem.service.impl.CourseServiceImpl;
import org.sinmem.service.impl.ExperimentscoresServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import utils.GsonUtils;

@Controller
public class CexperimentAction extends BaseAction<Cexperiment>{
	@Autowired
	CourseServiceImpl courseServiceImpl;
	@Autowired
	CexperimentServiceImpl cexperimentServiceImpl;
	@Autowired
	CexperimentsServiceImpl cexperimentsServiceImpl;
	@Autowired
	ExperimentscoresServiceImpl experimentscoresServiceImpl;
	
	/**
	 * @param experimentscoresNo(experimentNo-cClassNo-studentID)  
	 * @return
	 */
	public String add_cexperiments(){
		// 将复杂的json字符串转化为json对象,以便操作
		JsonObject jsondata = new JsonParser().parse(jsonStr).getAsJsonObject();
		String ES = jsondata.get("experimentscores").toString();
		String CES = jsondata.get("cexperiments").toString();
		Experimentscores tempES = GsonUtils.fromJson(ES, Experimentscores.class);
		Cexperiments tempCEs = GsonUtils.fromJson(CES, Cexperiments.class);
		//拼接并注入id,成绩单表,课程实验结果表及其详表都有experimentscoresNo栏位
		String experimentscoresNo = tempES.getExperimentno()+tempES.getCclassno()+tempES.getStudentid();
		tempES.setExperimentscoresno(experimentscoresNo);
		tempCEs.setExperimentscoresno(experimentscoresNo);
		for (Experimentclauses item : tempCEs.getExperimentclausesList()) {
			item.setExperimentscoresno(experimentscoresNo);
		}
		jsonObjMap.put("title", "get_cexperimentByPK");
		jsonObjMap.put("message", experimentscoresServiceImpl.saveARecord(tempES) && cexperimentsServiceImpl.addCexperiments(tempCEs));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	public String get_cexperimentByPK(){
		jsonObjMap.put("title", "get_cexperimentByPK");
		jsonObjMap.put("message", cexperimentServiceImpl.get_modle(fKey));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	
	public String add_cexperiment(){
		Cexperiment cexperiment = GsonUtils.fromJson(jsonStr, Cexperiment.class);
		// 对课程实验的编号(课程-年份-格式化编号)等继续操作
		int i = cexperiment.getOder();
		// 注意,这里+的是字符串的"0"而不是字符'0',他们至少这里证明了char 0+int 2 = 50 而不是拼接成"02"
		String cexperimentno = cexperiment.getCourseno()+Calendar.getInstance().get(Calendar.YEAR)+(i<10?"0"+i:String.valueOf(i));
		cexperiment.setExperimentno(cexperimentno);
		i = 1;
		for (Experimentclause item : cexperiment.getExperimentclauseList()) {
			item.setExperimentno(cexperimentno);
			item.setExperimentclauseno(cexperimentno+(i<10?"0"+i:String.valueOf(i)));
			i++;
		}
		jsonObjMap.put("title", "add_selectCourseForTe");
		jsonObjMap.put("message", cexperimentServiceImpl.saveARecord(cexperiment));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	public String get_cexperiment(){
		return "ok";
	}
	public String update_cexperiment(){
		return "ok";
	}
	public String del_cexperiment(){
		return "ok";
	}
}
