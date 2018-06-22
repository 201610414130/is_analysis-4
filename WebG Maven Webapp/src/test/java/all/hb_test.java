package all;

import java.util.Date;
import java.util.HashMap;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.sinmem.action.CourseAction;
import org.sinmem.action.UserAction;
import org.sinmem.bean.Admin;
import org.sinmem.bean.Institute;
import org.sinmem.bean.KeyMap;
import org.sinmem.bean.Student;
import org.sinmem.bean.Teacher;
import org.sinmem.bean.User;
import org.sinmem.service.UserService;
import org.sinmem.service.impl.ClazzServiceImpl;
import org.sinmem.service.impl.StudentServiceImpl;
import org.sinmem.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.google.gson.Gson;

import utils.Base64Utils;
import utils.SecretKeyUtil;
import utils.Sha;
/**
 * 使用spring.test让Junit调用spring容器里面注册的对象
 * @author sinmem
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:springconfig.xml")
public class hb_test {
	ApplicationContext ctx;
	SecretKeyUtil secretKeyUtil;
	Gson gson;
	// 将名字为studentServiceImpl的StudentServiceImpl类注入到给UserService接口
	@Autowired
	UserService<Student> userService;
//	@Autowired
//	UserAction userAction;
	@Autowired
	CourseAction courseAction;
	
	@Before
	public void init() {
		gson = new Gson();
	}
	@Test
	public void getMajor(){
		courseAction.add_course();
//		Student student =new Student();
//		student.setUserid("2015010010102");
//		student.setPwd("2015010010102");
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		Student tempStudent = userService.getUserInfo(student);
//		map.put("student", tempStudent);
//		map.put("clazz", clazzServiceImpl.get_modle(tempStudent.getClazzno()));
//		String mapjson=gson.toJson(map);
//		System.out.println("\n\n\n-----mapjson-------\n"+mapjson);
//		try {
//			byte[] bb=SecretKeyUtil.encryptByPrivateKey(mapjson);
//			int sum=0;
//			for (byte b : bb) {
//				sum+=b;
//			}
//			String aa = Base64Utils.encode(bb);
//			bb = Base64Utils.decode(aa);
//			System.out.println(sum);
//			System.out.println(SecretKeyUtil.decryptByPublicKey(bb)+"\n\n");
//			
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
	@After
	public void destroy() {
	}
}

/*
 * 随机学生
@Test
public void getMajor(){
	String[] firstName = {"赵", "孙", "王", "李", "杨", "柳", "庞", "候", "龚", "穆",
						  "唐", "刘", "龙", "潘", "汤", "罗", "范", "郑", "雍", "伊",
						  "于", "余", "贺", "钱", "戴", "彦", "严", "颜", "闫", "阎"};
	String[] lastName = {"廖星", "海利", "英博", "南宫 ", "高超", "甄锐", "锋", "别敏", "叡柳",
						"英", "毅", "符烨", "霖那", "飞", "昂", "谷泰", "初骆", "星", "雨",
						"南", "门和", "韵","雪风","叶", "琴", "阎", "宜隗", "梦", "束", "柏",
						"菊", "梁", "丘韵", "眉查", "昭","诸葛", "觅", "勤长孙书", "芳", "贝",
						"莓夏", "夔", "夏", "荀", "公西", "夏", "班", "茗", "滕", "臧娅",
						"全", "竹", "廉", "咛", "龙文", "咸", "枫", "聂", "怀丁", "珊",
						"西", "门", "全丹", "车", "邱", "琴闾", "沐", "璇", "符", "靖",
						"冷", "真", "西", "门", "珂", "亓", "官", "柔", "冷", "易", "芬",
						"后", "庄", "雪", "班", "彤"};
	注意:hql查询的时类名
	Query query = session.createQuery("FROM Clazz");
	List<Clazz>  clazzs= query.list();
	for(int i=0; i<40;i++){
		for(int j=1;j<=30;j++){
			Student tempStudent=new Student();
			tempStudent.setClazz(clazzs.get(i));
			String id = j<10?"0"+j:String.valueOf(j);
			tempStudent.setUserId(clazzs.get(i).getClazzNo()+id);
			Random random=new Random();
			int f = random.nextInt(firstName.length);
			int l = random.nextInt(lastName.length);
			tempStudent.setName(firstName[f]+lastName[l]);
			tempStudent.setUserType(3);
			session.save(tempStudent);
		}
		session.flush();
		session.clear();
	}
	tx.commit();
}*/


/*
 * 生成班级
@Test
public void getMajor(){
	注意:hql查询的时类名
	String cla[]={"一班","二班","三班","四班"};
	Query query = session.createQuery("FROM Major");
	List<Major> majors = query.list();
	for(int i=1; i<=40;i++){
		int coder = i<=10?1:i<=20?2:i<=30?3:4;
		int moder = i%10==0?10:i%10;
		int year = 2015;
		String soder ="0"+coder;
		Clazz tempClazz = new Clazz();
		tempClazz.setClazzNo(year+majors.get(moder-1).getMajorNo()+soder);
		tempClazz.setClazzName(year+"级"+majors.get(moder-1).getMajorName()+cla[coder-1]);
		tempClazz.setEducation(2);
		tempClazz.setMajor(majors.get(moder-1));
		session.save(tempClazz);
	}
	tx.commit();
*/

/*
 * 随机教师
@Test
public void getMajor(){
	String[] firstName = {"赵", "孙", "王", "李", "杨", "柳"};
	String[] lastName = {"廖星", "海利", "英博", "南宫 ", "高超", "甄锐", "锋", "别敏", "叡柳", "英", "毅", "符烨", "霖那", "飞", "昂", "谷泰", "初骆", "星", "雨", "南", "门和", "韵", "雪风"};
	String[] degree = {"本科", "硕士", "博士", "博士后"};
	String[] title = {"教授", "副教授", "讲师"};
	List<Teacher> teachers = new ArrayList<Teacher>();
	Institute institute = new Institute();
	institute.setInstituteNo("01");
	for(int i=1; i<=25;i++){
		Teacher teacher = new Teacher();
		String id = "0120";
		teacher.setInstitute(institute);
		teacher.setUserId(i<10?id+"0"+i:id+i);
		teacher.setName(firstName[i%firstName.length]+lastName[i%lastName.length]);
		teacher.setUserType(2);
		teacher.setDegree(degree[i%degree.length]);
		teacher.setTitle(title[i%title.length]);
//		teachers.add(teacher);
		session.save(teacher);
	}
	tx.commit();
}*/
