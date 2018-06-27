package all;

import java.util.Date;
import java.util.HashMap;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.sinmem.action.CexperimentAction;
import org.sinmem.action.CourseAction;
import org.sinmem.action.StudentAction;
import org.sinmem.action.TeacherAction;
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
 * 浣跨敤spring.test璁㎎unit璋冪敤spring瀹瑰櫒閲岄潰娉ㄥ唽鐨勫璞�
 * @author sinmem
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:springconfig.xml")
public class hb_test {
	ApplicationContext ctx;
	SecretKeyUtil secretKeyUtil;
	Gson gson;
	// 灏嗗悕瀛椾负studentServiceImpl鐨凷tudentServiceImpl绫绘敞鍏ュ埌缁橴serService鎺ュ彛
	@Autowired
	StudentAction studentAction;
	@Before
	public void init() {
		gson = new Gson();
	}
	@Test
	public void getMajor(){
		studentAction.setfKey("2015010010101");
		studentAction.setJsonStr("all");
		studentAction.get_S_Cs();
	}
	@After
	public void destroy() {
	}
}

/*
 * 闅忔満瀛︾敓
@Test
public void getMajor(){
	String[] firstName = {"璧�", "瀛�", "鐜�", "鏉�", "鏉�", "鏌�", "搴�", "鍊�", "榫�", "绌�",
						  "鍞�", "鍒�", "榫�", "娼�", "姹�", "缃�", "鑼�", "閮�", "闆�", "浼�",
						  "浜�", "浣�", "璐�", "閽�", "鎴�", "褰�", "涓�", "棰�", "闂�", "闃�"};
	String[] lastName = {"寤栨槦", "娴峰埄", "鑻卞崥", "鍗楀 ", "楂樿秴", "鐢勯攼", "閿�", "鍒晱", "鍙℃煶",
						"鑻�", "姣�", "绗︾儴", "闇栭偅", "椋�", "鏄�", "璋锋嘲", "鍒濋獑", "鏄�", "闆�",
						"鍗�", "闂ㄥ拰", "闊�","闆","鍙�", "鐞�", "闃�", "瀹滈殫", "姊�", "鏉�", "鏌�",
						"鑿�", "姊�", "涓橀煹", "鐪夋煡", "鏄�","璇歌憶", "瑙�", "鍕ら暱瀛欎功", "鑺�", "璐�",
						"鑾撳", "澶�", "澶�", "鑽�", "鍏タ", "澶�", "鐝�", "鑼�", "婊�", "鑷у▍",
						"鍏�", "绔�", "寤�", "鍜�", "榫欐枃", "鍜�", "鏋�", "鑱�", "鎬�涓�", "鐝�",
						"瑗�", "闂�", "鍏ㄤ腹", "杞�", "閭�", "鐞撮椌", "娌�", "鐠�", "绗�", "闈�",
						"鍐�", "鐪�", "瑗�", "闂�", "鐝�", "浜�", "瀹�", "鏌�", "鍐�", "鏄�", "鑺�",
						"鍚�", "搴�", "闆�", "鐝�", "褰�"};
	娉ㄦ剰:hql鏌ヨ鐨勬椂绫诲悕
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
 * 鐢熸垚鐝骇
@Test
public void getMajor(){
	娉ㄦ剰:hql鏌ヨ鐨勬椂绫诲悕
	String cla[]={"涓�鐝�","浜岀彮","涓夌彮","鍥涚彮"};
	Query query = session.createQuery("FROM Major");
	List<Major> majors = query.list();
	for(int i=1; i<=40;i++){
		int coder = i<=10?1:i<=20?2:i<=30?3:4;
		int moder = i%10==0?10:i%10;
		int year = 2015;
		String soder ="0"+coder;
		Clazz tempClazz = new Clazz();
		tempClazz.setClazzNo(year+majors.get(moder-1).getMajorNo()+soder);
		tempClazz.setClazzName(year+"绾�"+majors.get(moder-1).getMajorName()+cla[coder-1]);
		tempClazz.setEducation(2);
		tempClazz.setMajor(majors.get(moder-1));
		session.save(tempClazz);
	}
	tx.commit();
*/

/*
 * 闅忔満鏁欏笀
@Test
public void getMajor(){
	String[] firstName = {"璧�", "瀛�", "鐜�", "鏉�", "鏉�", "鏌�"};
	String[] lastName = {"寤栨槦", "娴峰埄", "鑻卞崥", "鍗楀 ", "楂樿秴", "鐢勯攼", "閿�", "鍒晱", "鍙℃煶", "鑻�", "姣�", "绗︾儴", "闇栭偅", "椋�", "鏄�", "璋锋嘲", "鍒濋獑", "鏄�", "闆�", "鍗�", "闂ㄥ拰", "闊�", "闆"};
	String[] degree = {"鏈", "纭曞＋", "鍗氬＋", "鍗氬＋鍚�"};
	String[] title = {"鏁欐巿", "鍓暀鎺�", "璁插笀"};
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
