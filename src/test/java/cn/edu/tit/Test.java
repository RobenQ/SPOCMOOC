package cn.edu.tit;

import java.security.NoSuchAlgorithmException;

import cn.edu.tit.common.Common;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			System.out.println(Common.eccryptMD5(""));
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
