package com.share.util;

import java.io.File;
import java.io.FileInputStream;

import org.apache.commons.io.IOUtils;
import org.apache.commons.net.ftp.FTPClient;

public class FtpUtil {

	private String url;
	private String username;
	private String passwd;
	private String workSpace;

	public FtpUtil(String url, String username, String passwd, String workSpace) {
		this.url = url;
		this.username = username;
		this.passwd = passwd;
		this.workSpace = workSpace;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public void setWorkSpace(String workSpace) {
		this.workSpace = workSpace;
	}
	
	public void upload(File srcFile){
		FTPClient client = new FTPClient();
		FileInputStream fis = null;
		try {
			client.connect(url);
			client.login(username, passwd);
			
			fis = new FileInputStream(srcFile);
			
			// 设置上传目录
			if (workSpace != null && !"".equals(workSpace)) {
				client.changeWorkingDirectory(workSpace);
			}
			client.setBufferSize(1024);
			client.setControlEncoding("UTF-8");
			// 设置文件类型
			client.setFileType(FTPClient.BINARY_FILE_TYPE);
			client.storeFile(srcFile.getName(), fis);
			System.out.println("ftp upload file successful!");
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			IOUtils.closeQuietly(fis);
			try {
				client.disconnect();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}		
	}

	public void upload(String filepath) {
		upload(new File(filepath));
	}
}
