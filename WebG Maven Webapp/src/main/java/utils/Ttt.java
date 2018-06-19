package utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository(value = "Ttt")
public class Ttt {
	@Autowired
	public Ttt(){
		System.out.println("\n\n-------------------\n创建了Ttt类\n\n-------------------\n");
	}
	public void name() {
		System.out.println("kkkk");
	}
}
