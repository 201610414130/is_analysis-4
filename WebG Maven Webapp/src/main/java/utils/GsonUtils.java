package utils;

import java.util.ArrayList;

import com.google.gson.Gson;


public class GsonUtils {
	public static <T>T fromJson(String json, Class<T> type){
		Gson gson = new Gson();
		return gson.fromJson(json, type);
	}
	public static <T> ArrayList<T> listFromJson(String json, Class<ArrayList<T>> type){
		Gson gson = new Gson();
		return gson.fromJson(json, type);
	}
	public static <T> String toJson(T t){
		Gson gson = new Gson();
		return gson.toJson(t);
	}
}
