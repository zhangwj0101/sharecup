package com.share.action;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction_json extends ActionSupport implements SessionAware,
		ServletRequestAware, ServletResponseAware {

	private static final long serialVersionUID = 3336269454371540285L;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private File[] imgFile;
	private String[] imgFileContentType;
	private String[] imgFileFileName;
	private static List<String> imguri = new ArrayList<String>();
	private Map<String, Object> session;
	
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	
	public File[] getImgFile() {
		return imgFile;
	}

	public void setImgFile(File[] imgFile) {
		this.imgFile = imgFile;
	}

	public String[] getImgFileContentType() {
		return imgFileContentType;
	}

	public void setImgFileContentType(String[] imgFileContentType) {
		this.imgFileContentType = imgFileContentType;
	}

	public String[] getImgFileFileName() {
		return imgFileFileName;
	}

	public void setImgFileFileName(String[] imgFileFileName) {
		this.imgFileFileName = imgFileFileName;
	}

	public void uploadFile_json() {
		String result = "fail";
		String realpath = ServletActionContext.getServletContext().getRealPath("/img");
		
		File file = new File(realpath);
		if (!file.exists()) {
			file.mkdirs();
		}

		JSONObject json = new JSONObject();
		
		if (imgFile != null) {
			for (int i = 0; i < imgFile.length; i++) {
				File srcFile = imgFile[i];
				String targetFileSrc = imgFileFileName[i].toString();
				File targetFile = new File(file, targetFileSrc);
				if (targetFile.exists()) {
					/**
					String tmp = uploadFileFileName[i];
					if (tmp.indexOf(".") != -1) {
						targetFile = new File(file, tmp.substring(0, tmp.indexOf(".")) + StringUtil.formatDate("_yyyyMMddHHssmm.", new Date()) + tmp.substring(tmp.indexOf(".") + 1));
					}
					**/
					targetFile.delete();
				}
				try {
					FileUtils.copyFile(srcFile, targetFile);
					
					String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";  

					result = basePath + "img" + File.separator + targetFile.getName();
					imguri.add(result);
					session.put("imguri", imguri);
					System.out.println(result);
					json.put("error", 0);
					json.put("url", result);
				} catch (IOException e2) {
					e2.printStackTrace();
					json.put("error",1);
					json.put("message","啊哦~出错了~再试试吧~~");
				}
				
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out;
				try {
					out = response.getWriter();
					out.write(json.toString());
					out.flush();
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}	
}