package utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Sha {
	public static String sha_pwd(String pwd){
		String temp = null;
		try {
			MessageDigest shaDigest = MessageDigest.getInstance("SHA");
			byte[] shaEncode = shaDigest.digest(pwd.getBytes());
			temp = hexSHAPwd(shaEncode);
//			System.out.println("will2sha-"+pwd2shaPwd(shaEncode));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return temp;
	}
	private static String hexSHAPwd(byte[] shaEncode) {
		String result = "";
		for(byte btemp: shaEncode){
//			System.out.printf("十-%d  十六-%x\n",btemp & 0xff,btemp & 0xff);
			String temp = Integer.toHexString(btemp & 0xff);
			result += temp.length()==1?("0"+temp):temp;
		}
		return result;
	}
}
