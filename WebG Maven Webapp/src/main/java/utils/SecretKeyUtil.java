package utils;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.crypto.Cipher;

import org.sinmem.bean.KeyMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

@Controller
public class SecretKeyUtil {
	@Autowired
	private static KeyMap key;
	private static final String FILE_PATH = "F:/key.properties";//为了可以在Junit以及Tomcat下都能使用,暂时用绝对路径
	private static final String KEY_ALGORITHM = "RSA";// 加密算法
	private static final String PUBLIC_KEY = "RSAPublicKey";// 公钥
	private static final String PRIVATE_KEY = "RSAPrivateKey";// 私钥
	private static final int MAX_ENCRYPT_BLOCK = 117;// RSA最大加密明文大小
	private static final int MAX_DECRYPT_BLOCK = 128; // RSA最大解密密文大小

	// 密码对存放集合
	private static final Map<String, String> keyMap = new HashMap<String, String>();

	// 以饿汉方式创建加密工具
	private SecretKeyUtil() {
		try {
			get_keys_onfile();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static final SecretKeyUtil secretKeyUtil = new SecretKeyUtil();

	public static SecretKeyUtil getSecretKeyUtil() {
		return secretKeyUtil;
	}
	
	/**
	 * 生成密钥对
	 */
//	private void generateKey() {
//		KeyPairGenerator keyPairGen;
//		try {
//			keyPairGen = KeyPairGenerator.getInstance(KEY_ALGORITHM);
//			SecureRandom secureRandom = new SecureRandom(new Date().toString().getBytes()); 
//			keyPairGen.initialize(1024, secureRandom);
//			KeyPair keyPair = keyPairGen.generateKeyPair();
//			RSAPublicKey publicKey = (RSAPublicKey) keyPair.getPublic();
//			RSAPrivateKey privateKey = (RSAPrivateKey) keyPair.getPrivate();
//			try {
//				byte[] tempByte = ((Key)publicKey).getEncoded();
//				keyMap.put(PUBLIC_KEY, Base64Utils.encode(tempByte));
//				tempByte = ((Key)privateKey).getEncoded();
//				keyMap.put(PRIVATE_KEY, Base64Utils.encode(tempByte));
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		} catch (NoSuchAlgorithmException e) {
//			e.printStackTrace();
//		}
//	}
	
	
	/** 
     * 私钥解密 
     *  
     * @param encryptedData 已加密数据 
     * @return 
     * @throws Exception 
     */  
    public static byte[] decryptByPrivateKey(byte[] encryptedData)  
            throws Exception {
    	String privateKey = keyMap.get(PRIVATE_KEY);
        byte[] keyBytes = Base64Utils.decode(privateKey);  
        PKCS8EncodedKeySpec pkcs8KeySpec = new PKCS8EncodedKeySpec(keyBytes);  
        KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);  
        Key privateK = keyFactory.generatePrivate(pkcs8KeySpec);  
        Cipher cipher = Cipher.getInstance(keyFactory.getAlgorithm());  
        cipher.init(Cipher.DECRYPT_MODE, privateK);  
        int inputLen = encryptedData.length;  
        ByteArrayOutputStream out = new ByteArrayOutputStream();  
        int offSet = 0;  
        byte[] cache;  
        int i = 0;  
        // 对数据分段解密  
        while (inputLen - offSet > 0) {  
            if (inputLen - offSet > MAX_DECRYPT_BLOCK) {  
                cache = cipher.doFinal(encryptedData, offSet, MAX_DECRYPT_BLOCK);  
            } else {  
                cache = cipher.doFinal(encryptedData, offSet, inputLen - offSet);  
            }  
            out.write(cache, 0, cache.length);  
            i++;  
            offSet = i * MAX_DECRYPT_BLOCK;  
        }  
        byte[] decryptedData = out.toByteArray();  
        out.close();  
        return decryptedData;  
    }  
  
    /**
     * 公钥解密 
     *  
     * @param encryptedData 已加密数据 
     * @return 
     * @throws Exception 
     */  
    public static String decryptByPublicKey(byte[] encryptedData)  
            throws Exception {
//    	byte[] encryptedData = inputStr.getBytes();
    	String publicKey = keyMap.get(PUBLIC_KEY);
        byte[] keyBytes = Base64Utils.decode(publicKey);  
        X509EncodedKeySpec x509KeySpec = new X509EncodedKeySpec(keyBytes);  
        KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);  
        Key publicK = keyFactory.generatePublic(x509KeySpec);  
        Cipher cipher = Cipher.getInstance(keyFactory.getAlgorithm());  
        cipher.init(Cipher.DECRYPT_MODE, publicK);  
        int inputLen = encryptedData.length;  
        ByteArrayOutputStream out = new ByteArrayOutputStream();  
        int offSet = 0;  
        byte[] cache;  
        int i = 0;  
        // 对数据分段解密  
        while (inputLen - offSet > 0) {  
            if (inputLen - offSet > MAX_DECRYPT_BLOCK) {  
                cache = cipher.doFinal(encryptedData, offSet, MAX_DECRYPT_BLOCK);  
            } else {  
                cache = cipher.doFinal(encryptedData, offSet, inputLen - offSet);  
            }  
            out.write(cache, 0, cache.length);  
            i++;  
            offSet = i * MAX_DECRYPT_BLOCK;  
        }  
        String decryptedData = out.toString();  
        out.close();  
        return decryptedData;  
    }  
  
    /**
     * 公钥加密 
     *  
     * @param data 源数据 
     * @return 
     * @throws Exception 
     */  
    public static byte[] encryptByPublicKey(byte[] data)  
            throws Exception {  
    	String publicKey = keyMap.get(PUBLIC_KEY);
        byte[] keyBytes = Base64Utils.decode(publicKey);  
        X509EncodedKeySpec x509KeySpec = new X509EncodedKeySpec(keyBytes);  
        KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);  
        Key publicK = keyFactory.generatePublic(x509KeySpec);  
        // 对数据加密  
        Cipher cipher = Cipher.getInstance(keyFactory.getAlgorithm());  
        cipher.init(Cipher.ENCRYPT_MODE, publicK);  
        int inputLen = data.length;  
        ByteArrayOutputStream out = new ByteArrayOutputStream();  
        int offSet = 0;  
        byte[] cache;  
        int i = 0;  
        // 对数据分段加密  
        while (inputLen - offSet > 0) {  
            if (inputLen - offSet > MAX_ENCRYPT_BLOCK) {  
                cache = cipher.doFinal(data, offSet, MAX_ENCRYPT_BLOCK);  
            } else {  
                cache = cipher.doFinal(data, offSet, inputLen - offSet);  
            }  
            out.write(cache, 0, cache.length);  
            i++;  
            offSet = i * MAX_ENCRYPT_BLOCK;  
        }  
        byte[] encryptedData = out.toByteArray();  
        out.close();  
        return encryptedData;  
    }  
  
    /**
     * 私钥加密 
     *  
     * @param data 源数据 
     * @return 
     * @throws Exception 
     */  
    public static byte[] encryptByPrivateKey(String dataStr)  
            throws Exception {
    	byte[] data = dataStr.getBytes();
    	String privateKey = keyMap.get(PRIVATE_KEY);
        byte[] keyBytes = Base64Utils.decode(privateKey);  
        PKCS8EncodedKeySpec pkcs8KeySpec = new PKCS8EncodedKeySpec(keyBytes);  
        KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);  
        Key privateK = keyFactory.generatePrivate(pkcs8KeySpec);  
        Cipher cipher = Cipher.getInstance(keyFactory.getAlgorithm());  
        cipher.init(Cipher.ENCRYPT_MODE, privateK);  
        int inputLen = data.length;  
        ByteArrayOutputStream out = new ByteArrayOutputStream();  
        int offSet = 0;  
        byte[] cache;  
        int i = 0;  
        // 对数据分段加密  
        while (inputLen - offSet > 0) {  
            if (inputLen - offSet > MAX_ENCRYPT_BLOCK) {  
                cache = cipher.doFinal(data, offSet, MAX_ENCRYPT_BLOCK);  
            } else {  
                cache = cipher.doFinal(data, offSet, inputLen - offSet);  
            }  
            out.write(cache, 0, cache.length);  
            i++;  
            offSet = i * MAX_ENCRYPT_BLOCK;  
        }  
        byte[] encryptedData = out.toByteArray();  
        out.close();  
        return encryptedData;  
    }
	
    /**
     * 
     * @return 公钥
     */
    public static String getPublicKey(){
    	return keyMap.get(PUBLIC_KEY).toString();
    }
	
	public static void main(String[] argvs){
		Properties prop=new Properties();
		InputStream in;
        try {
            in = new BufferedInputStream(new FileInputStream(FILE_PATH));
            prop.load(in);     ///加载属性列表
            System.out.println("PUBLIC_KEY:"+prop.getProperty(PUBLIC_KEY));
            System.out.println("PRIVATE_KEY:"+prop.getProperty(PRIVATE_KEY));
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }  
	}
	private static void get_keys_onfile(){
		
//		文件读写路径有问题懒得改
		Properties prop=new Properties();
		InputStream in;
        try {
            in = new BufferedInputStream(new FileInputStream(FILE_PATH));
            prop.load(in);     ///加载属性列表
//            System.out.println("PUBLIC_KEY:"+prop.getProperty(PUBLIC_KEY));
//            System.out.println("PRIVATE_KEY:"+prop.getProperty(PRIVATE_KEY));
            keyMap.put(PUBLIC_KEY, prop.getProperty(PUBLIC_KEY));
			keyMap.put(PRIVATE_KEY, prop.getProperty(PRIVATE_KEY));
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
}





/////保存属性到b.properties文件
//Properties props=new Properties();
//FileOutputStream oFile;
//try {
//	oFile = new FileOutputStream("src/main/resources/config/properties/key.properties", false);
//	props.setProperty(PRIVATE_KEY, keyMap.get(PRIVATE_KEY).toString());
//	props.setProperty(PUBLIC_KEY, keyMap.get(PUBLIC_KEY).toString());
//	props.store(oFile, "RSAKey");
//	System.out.println("save ok");
//	oFile.close();
//} catch (Exception e) {
//	// TODO Auto-generated catch block
//	e.printStackTrace();
//}//true表示追加打开
