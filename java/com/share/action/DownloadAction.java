package com.share.action;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.DLResource;
import com.share.bean.Resource;
import com.share.bean.SourceDown;
import com.share.bean.StudentHeader;
import com.share.bean.UserSession;
import com.share.dao.DLResourceDao;
import com.share.dao.SourceDownDao;
import com.share.util.StringUtil;

public class DownloadAction extends ActionSupport implements ServletRequestAware, ServletResponseAware{
	

	private static final long serialVersionUID = -8155937043599209742L;
	private static final int BUFFER_SIZE = 40 * 1024;

	private String fileName;
	private String inputName;
	
	private HttpServletRequest request;
	private HttpServletResponse response;
	
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getInputName() {
		return inputName;
	}

	public void setInputName(String inputName) {
		this.inputName = inputName;
	}

	public void downpic() {
		
		ServletOutputStream out = null;
		
		try {
			
			response.setContentType("text/html");
			out = response.getOutputStream();

			String filename = request.getParameter("filename");
			filename = URLDecoder.decode(filename, "UTF-8");

			File file = new File(filename);

			System.out.println(file);

			if (!file.exists()) {
				out.print(new String(
								"<script>alert('\u60A8\u8981\u4E0B\u8F7D\u7684\u8D44\u6E90\u4E0D\u5B58\u5728\uFF01');window.close();</script>"
										.getBytes(), "ISO-8859-1"));
				out.close();
			}

			// 读取文件流
			FileInputStream fileInputStream = new FileInputStream(file);
			// 下载文件
			// 设置响应头和下载保存的文件名
			if (filename != null && filename.length() > 0) {
				response.setContentType("application/x-msdownload");
				response
						.setHeader("Content-Disposition",
								"attachment; filename="
										+ new String(filename.getBytes(),
												"ISO-8859-1"));
				if (fileInputStream != null) {
					// 文件太大时内存不能一次读出,要循环
					byte[] buffer = new byte[1024];
					int i = -1;
					while ((i = fileInputStream.read(buffer)) != -1) {
						out.write(buffer, 0, i);
					}
					out.flush();
					out.close();
					fileInputStream.close();
					out = null;
				}
			}

		} catch (Exception e) {

		} finally{
		}
		
	}
	
	
	public void resourceDownFTP(){
		SourceDownDao sourceDownDao = new SourceDownDao();
		HttpSession session = request.getSession();
		UserSession userSession = (UserSession)session.getAttribute("user");
		int headerID = userSession.getId();
		String id = request.getParameter("id");
		boolean flag = sourceDownDao.ifDown(Integer.parseInt(id), headerID);
		if(!flag){
			StudentHeader header = new StudentHeader();
			header.setId(headerID);
			Resource resource = new Resource();
			resource.setId(Integer.parseInt(id));
			SourceDown sourceDown = new SourceDown();
			sourceDown.setResource(resource);
			sourceDown.setStudent(header);
			sourceDownDao.save(sourceDown);
		}
	}
	
	public void resourceDown(){

		boolean filenotExist = false;
		
		ServletOutputStream out = null;
		
		String id = request.getParameter("id");
		String filename = request.getParameter("filename");
		
		try {
			
			response.setContentType("text/html");
			out = response.getOutputStream();

			DLResource resource = null;
			
			if (StringUtil.isNullOrBlank(id)) {
				int resourceId = -1;
				try {
					resourceId = Integer.parseInt(filename);
				} catch (Exception e) {
				}				
				DLResourceDao resouceDao = new DLResourceDao();
				resource = (DLResource) resouceDao.findById(resourceId, "com.share.bean.DLResource");	
				
				if (resource == null || "".equals(resource.getFilepath())) {
				}else {
					filename = resource.getFilepath();
				}
				filename = URLDecoder.decode(filename, "UTF-8");				
			}

			// String path = "";
			// path = "file:///" + filename;
			
			File file = new File(filename);

			System.out.println(file);

			if (!file.exists()) {
				out.print(new String(
								"<script>alert('\u60A8\u8981\u4E0B\u8F7D\u7684\u8D44\u6E90\u4E0D\u5B58\u5728\uFF01');window.close();</script>"
										.getBytes(), "ISO-8859-1"));
				out.close();
				
				filenotExist = true;
			}

			// 读取文件流
			FileInputStream fileInputStream = new FileInputStream(file);
			// 下载文件
			// 设置响应头和下载保存的文件名
			if (filename != null && filename.length() > 0) {
				response.setContentType("application/x-msdownload");
				if (!StringUtil.isNullOrBlank(id)) {
					response.setHeader("Content-Disposition", "attachment; filename=" + new String(filename.getBytes(), "ISO-8859-1"));					
				}else {
					response
					.setHeader("Content-Disposition",
							"attachment; filename="
									+ new String((resource.getHeader().getSchool() + "-" + resource.getHeader().getName() + "-" + resource.getHeader().getPhone() + "-" + resource.getFilename()).getBytes(),
											"ISO-8859-1"));					
				}
				if (fileInputStream != null) {
					// 文件太大时内存不能一次读出,要循环
					byte[] buffer = new byte[1024];
					int i = -1;
					while ((i = fileInputStream.read(buffer)) != -1) {
						out.write(buffer, 0, i);
					}
					out.flush();
					out.close();
					fileInputStream.close();
					out = null;
				}
			}

		} catch (Exception e) {

		} finally{
		}
		
	
		if(!filenotExist){
			SourceDownDao sourceDownDao = new SourceDownDao();
			HttpSession session = request.getSession();
			UserSession userSession = (UserSession)session.getAttribute("user");
			int headerID = userSession.getId();
			boolean flag = sourceDownDao.ifDown(Integer.parseInt(id), headerID);
			if(!flag){
				StudentHeader header = new StudentHeader();
				header.setId(headerID);
				Resource resource = new Resource();
				resource.setId(Integer.parseInt(id));
				SourceDown sourceDown = new SourceDown();
				sourceDown.setResource(resource);
				sourceDown.setStudent(header);
				sourceDownDao.save(sourceDown);
			}			
		}

	}
	// 从下载文件原始存放路径读取得到文件输出流
	public InputStream getDownloadFile() {
		InputStream in = null;
		try {
			in = new BufferedInputStream(
					new FileInputStream(new File(fileName)), BUFFER_SIZE);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return in;
	}

	// 如果下载文件名为中文，进行字符编码转换
	public String getDownloadChineseFileName() {
		String downloadChineseFileName = fileName;
		try {
			downloadChineseFileName = new String(downloadChineseFileName
					.getBytes(), "ISO8859-1");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return downloadChineseFileName;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public void setServletResponse(HttpServletResponse response) {
		this.response= response;
		
	}
 
}
