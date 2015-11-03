package com.share.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.DLResource;
import com.share.bean.StudentHeader;
import com.share.bean.UserSession;
import com.share.dao.DLResourceDao;
import com.share.dao.StudentHeaderDao;
import com.share.support.Utils;
import com.share.util.StringUtil;

public class UploadAction extends ActionSupport implements ServletRequestAware{

	private static final long serialVersionUID = 1066462879465704987L;
	
	private HttpServletRequest request;
	
	private StudentHeaderDao studentHeaderDao;
	private DLResourceDao dlResourceDao;
	
	public UploadAction(){
		studentHeaderDao = new StudentHeaderDao();
		dlResourceDao = new DLResourceDao();
	}
	 
	File upload;
	String uploadFileName;

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	
	public String workUpload(){
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession)session.getAttribute("user");
		StudentHeader header = (StudentHeader)studentHeaderDao.findByProperty("id", userSession.getId(),"StudentHeader").get(0);
	
		List<DLResource> subjects = dlResourceDao.findByProperty("header.id", header.getId(), "com.share.bean.DLResource");
		request.setAttribute("subjects", subjects);
		
		String subject = request.getParameter("subject");
		String othername = request.getParameter("othername");
		String otherrefer = request.getParameter("otherrefer");		
		String fileName = uploadFileName.hashCode() + uploadFileName.substring(uploadFileName.lastIndexOf("."));
		
		if (subject == null) {
			subject = "";
		}
		
		boolean exist = false;
		DLResource existResource = null;
		if(subjects.size() >= 2){
			for (DLResource resource : subjects) {
				if (fileName.equals(resource.getFilename()) && subject.equals(resource.getSubject()) ) {
					exist = true;
					existResource = resource;
				}
			}
			if (!exist) {
				request.setAttribute("tip", "您已经上传了2个作品，不能继续上传！");
				return "work";
			}
		}

		if(uploadFileName==null||uploadFileName.equals("")){
			request.setAttribute("tip", "请选择上传的文件！");
			return "work";
		}
		if(Utils.verdictType(uploadFileName)){
			request.setAttribute("tip", "请勿上传非法文件！");
			return "work";
		}
		
		String path = request.getSession().getServletContext().getRealPath("upload/users") + File.separator + header.getUsername();
		FileOutputStream out = null;
		FileInputStream fis = null;
		File file = new File(path);
		if(!file.exists()){
			file.mkdirs();
		}
		try{
		File attachmentFile = new File(path, fileName);
		if (!attachmentFile.exists()) { // 判断文件是否存在，如果不存在则创建此文件
			attachmentFile.createNewFile();
		}else {
			attachmentFile.renameTo(new File(attachmentFile.getName() + "_back"));
		}
		out = new FileOutputStream(attachmentFile); // 输出到文件流
		fis = new FileInputStream(getUpload());
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = fis.read(buffer)) > 0) {
			out.write(buffer, 0, len);
		}

		if (exist) {
			
			existResource.setUptime(StringUtil.formatDate(new Date()));
			existResource.setFilepath(path+"/"+fileName);
			existResource.setFilename(fileName);
			existResource.setHeader(header);
			existResource.setSubject(subject);
			existResource.setPlatname(othername);
			existResource.setReference(otherrefer);
			
			dlResourceDao.merge(existResource);
			
			request.setAttribute("tip", "作品上传并更新成功！");
			
		}else {
			DLResource aResource = new DLResource();
			aResource.setFilepath(path+"/"+fileName);
			aResource.setUptime(StringUtil.formatDate(new Date()));
			aResource.setFilename(fileName);
			aResource.setHeader(header);
			aResource.setSubject(subject);
			aResource.setPlatname(othername);
			aResource.setReference(otherrefer);
			
			dlResourceDao.save(aResource);
			
			subjects.add(aResource);	
			request.setAttribute("tip", "作品上传成功！");
		}
		
		request.setAttribute("path", path+"/"+fileName);
		
		request.setAttribute("subjects", subjects);
		
		new File(attachmentFile.getName() + "_back").deleteOnExit();
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				fis.close();
			} catch (Exception e) {
			}
			try {
				out.close();
			} catch (Exception e) {
				request.setAttribute("tip", "上传失败！");
			}
		}
		return "work";
	}
	
	public String resources(){
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession)session.getAttribute("user");
		if(userSession != null){
			StudentHeader header = (StudentHeader)studentHeaderDao.findByProperty("id", userSession.getId(),"StudentHeader").get(0);
			
			List<DLResource> subjects = dlResourceDao.findByProperty("header.id", header.getId(), "com.share.bean.DLResource");
			request.setAttribute("subjects", subjects);
			request.setAttribute("tip", "您已经上传了 " + subjects.size() + " 部作品！");			
		}
		return "resource";
	}	
	
	public String delete(){
		String tmp = request.getParameter("id");
		Integer id = -1;
		try {
			id = Integer.parseInt(tmp);
			id = (id - 234) / 9999 ;
		} catch (Exception e) {
		}
		
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession)session.getAttribute("user");
		if(userSession != null){
			dlResourceDao.updateSQL("delete from dl_resource where id = " + id);		
		}

		return resources();
	}		
	
	public String sourceUpload(){
		
		
		return "source";
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	
	
}
