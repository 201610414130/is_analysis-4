package org.sinmem.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.sinmem.bean.Courseclass;
import org.sinmem.bean.Experimentscores;
import org.sinmem.bean.Major;
import org.sinmem.bean.Teacher;
import org.sinmem.service.UserService;
import org.sinmem.service.impl.CexperimentServiceImpl;
import org.sinmem.service.impl.CourseServiceImpl;
import org.sinmem.service.impl.CourseclassServiceImpl;
import org.sinmem.service.impl.ExperimentscoresServiceImpl;
import org.sinmem.service.impl.InstituteServiceImpl;
import org.sinmem.service.impl.MajorServiceImpl;
import org.sinmem.service.impl.S_CServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import utils.GsonUtils;

@Controller
public class TeacherAction extends UserInterfImpl<Teacher>{
	@Autowired
	UserService<Teacher> userService;
	@Autowired
	InstituteServiceImpl instituteServiceImpl;
	@Autowired
	MajorServiceImpl majorServiceImpl;
	@Autowired
	CourseServiceImpl courseServiceImpl;
	@Autowired
	CourseclassServiceImpl courseclassServiceImpl;
	@Autowired
	S_CServiceImpl s_CServiceImpl;
	@Autowired
	ExperimentscoresServiceImpl experimentscoresServiceImpl;
	@Autowired
	CexperimentServiceImpl cexperimentServiceImpl;
	
	/**
	 * experimentscores(课程实验号-开课班号-学号)->用fKey(课程试验号去掉后六位:即课程号),jsonStr(开课班号-学号)拼接通配符以查询experimentscores
	 * @return
	 */
	public String get_experimentscores(){
		ArrayList<Experimentscores> experimentscores = experimentscoresServiceImpl.getES_WLPkForSt(fKey+"______"+jsonStr);
		jsonObjMap.put("title", "get_courseForTeacher");
		jsonObjMap.put("message", experimentscores.size()>0?true:false);
		jsonObjMap.put("courseclasss", experimentscores);
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	/**
	 * <dl>
	 * 	<dt>
	 * 		教师获取开课班学生列表
	 * 	</dd>
	 * 	</dt>
	 * 		教师开了课(这个课可能不同学期都开)->默认查询本学期的开课班列表->默认为开课班列表第一项加加入它的选课学生
	 * 	<dd>
	 * </dl>
	 * @param cCourseno 可选,用于指定查询的开课班
	 * @return
	 */
	public String get_students(){
		ArrayList<Courseclass> courseclass = courseclassServiceImpl.getCourseclassesWLteacher(fKey,trem);
		int i = 0;
		if(courseclass.size()>0 && cCourseno!=null){
			for(Courseclass temp: courseclass){
				// 找到与给定开课班相同的实体,将其序号赋给i
				if(temp.getCclassno().equals(cCourseno)){
					break;
				}else{
					i++;
				}
			}
			Courseclass temp = null;
			try {
				temp = courseclass.get(i);
			} catch (IndexOutOfBoundsException e) {
				System.out.println("\n\n------查询不到,默认返回------\n\n");
				temp = courseclass.get(0);
			}
			temp.setStudent_Class(s_CServiceImpl.get_modles(temp.getCclassno()));
			jsonObjMap.put("experimentList",cexperimentServiceImpl.get_modles(temp.getCourseno()));
		}else if(cCourseno==null){
			System.out.println("\n\n------未输入,默认返回------\n\n");
			Courseclass temp = courseclass.get(0);
			temp.setStudent_Class(s_CServiceImpl.get_modles(temp.getCclassno()));
			jsonObjMap.put("experimentList",cexperimentServiceImpl.get_modles(temp.getCourseno()));
		}
		jsonObjMap.put("title", "get_courseForTeacher");
		jsonObjMap.put("message", courseclass.size()<=0?false:true);
		jsonObjMap.put("courseclasss", courseclass);
		jsonStr = GsonUtils.toJson(jsonObjMap);
		System.out.println("\n\n------"+jsonStr+"------\n\n");
		return "ok";
	}
	public String get_courseForTe() {
		Major major = majorServiceImpl.get_modle(fKey);
		List courses = courseServiceImpl.get_modles(fKey);
		jsonObjMap.put("title", "get_courseForTeacher");
		jsonObjMap.put("message", courses==null?false:true);
		jsonObjMap.put("course", courses);
		jsonObjMap.put("major", major);
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	public String add_selectCourseForTe() {
//		System.out.println("add_selectCourseForTe: "+jsonStr);
		Courseclass courseclass = GsonUtils.fromJson(jsonStr, Courseclass.class);
		// 使用tringBuilder拼接courseclass.cClassNo(开课学期-课程号-教师工号);
		StringBuilder cClassNo = new StringBuilder(courseclass.getTerm().toString());
		cClassNo.append(courseclass.getCourseno());
		cClassNo.append(courseclass.getTeacherno());
		courseclass.setCclassno(cClassNo.toString());
		jsonObjMap.put("title", "add_selectCourseForTe");
		jsonObjMap.put("message", courseclassServiceImpl.saveARecord(courseclass));
		jsonStr = GsonUtils.toJson(jsonObjMap);
		return "ok";
	}
	@Override
	public String get_MUserInfo(Teacher user) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		Teacher tempTeacher = userService.getUserInfo(user);
		map.put("user", tempTeacher);
		map.put("major", majorServiceImpl.get_modle(tempTeacher.getMajorno()));
		map.put("institute", instituteServiceImpl.get_modle(tempTeacher.getInstituteno()));
		return GsonUtils.toJson(map);
	}

	private Integer trem;
	private String cCourseno;
	
	// setter/getter

	public void setTrem(Integer trem) {
		this.trem = trem;
	}
	public void setcCourseno(String cCourseno) {
		this.cCourseno = cCourseno;
	}
	
}
