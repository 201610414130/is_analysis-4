package org.sinmem.action;

import java.lang.reflect.ParameterizedType;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;

@Controller
public class BaseAction<T> implements SessionAware, ModelDriven<T>{
	protected Map<String, Object> sessionMap;
	protected Map<String, Object> jsonObjMap = new HashMap<String, Object>();
	protected String jsonStr;
	
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.sessionMap = session;
	}

	
	// 加载实体
    protected T model;
	@Override
	public T getModel() {
		ParameterizedType type = (ParameterizedType)this.getClass().getGenericSuperclass();  
        Class clazz = (Class)type.getActualTypeArguments()[0];  
        try {  
            model = (T)clazz.newInstance();  
        } catch (Exception e) {  
            throw new RuntimeException(e);  
        }     
        return model; 
	}
	// 以下setter/getter
	
	public String getJsonStr() {
		return jsonStr;
	}
	
	
	public void setJsonStr(String jsonStr) {
		this.jsonStr = jsonStr;
	}
	
}
