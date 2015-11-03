package com.share.util;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

import sun.misc.BASE64Decoder;

public class MD5 {
	public static String getMd5(String str) {
		String s = str;
		if (s == null) {
			return "";
		} else {
			String value = null;
			MessageDigest md5 = null;
			try {
				md5 = MessageDigest.getInstance("MD5");
			} catch (NoSuchAlgorithmException ex) {
				Logger.getLogger(MD5.class.getName()).log(Level.SEVERE, null,
						ex);
			}
			sun.misc.BASE64Encoder baseEncoder = new sun.misc.BASE64Encoder();
			try {
				value = baseEncoder.encode(md5.digest(s.getBytes("utf-8")));
			} catch (Exception ex) {
			}
			return value;
		}
	}
	
	public String getSource(String md5){
		BASE64Decoder decoder = new BASE64Decoder();
		String value = md5;
		try {
			value = new String(decoder.decodeBuffer(new String(md5.getBytes("utf-8"))));
		} catch (IOException e) {
			e.printStackTrace();
		}
		return value;
	}
	
	public static void main(String[] args) {
		System.out.println(new MD5().getSource("1"));
	}
}