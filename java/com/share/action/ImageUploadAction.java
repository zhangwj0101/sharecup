/** 
 * 2012-6-27 
 * ImageUploadAction.java 
 * author:许可 
 */

package com.share.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ImageUploadAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware, SessionAware {

	private File upload;
	private String uploadContentType;
	private String uploadFileName;
	private static List<String> imguri = new ArrayList<String>(); 
	private HttpServletRequest request;
	private HttpServletResponse response;
	private Map<String, Object> session;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String execute() throws Exception {

		System.out.println("fileType::" + uploadFileName);
		response.setCharacterEncoding("GBK");
		//String alt_msg = "Sorry! Image format selection is incorrect, please choose GIF, jpeg, PNG format JPG, picture!";
		PrintWriter out = response.getWriter();

		// 对文件进行校验
		if (upload == null || uploadContentType == null
				|| uploadFileName == null) {
			out.print("<font color=\"red\" size=\"2\">*请选择上传文件</font>");
			return null;
		}

		if ((uploadContentType.equals("image/pjpeg") || uploadContentType
				.equals("image/jpeg"))
				&& uploadFileName.substring(uploadFileName.length() - 4)
						.toLowerCase().equals(".jpg")) {
			// IE6上传jpg图片的headimageContentType是image/pjpeg，而IE9以及火狐上传的jpg图片是image/jpeg
		} else if (uploadContentType.equals("image/png")
				&& uploadFileName.substring(uploadFileName.length() - 4)
						.toLowerCase().equals(".png")) {
		} else if (uploadContentType.equals("image/gif")
				&& uploadFileName.substring(uploadFileName.length() - 4)
						.toLowerCase().equals(".gif")) {
		} else if (uploadContentType.equals("image/bmp")
				&& uploadFileName.substring(uploadFileName.length() - 4)
						.toLowerCase().equals(".bmp")) {
		} else {
			out.print("<font color=\"red\" size=\"2\">*文件格式不正确（必须为.jpg/.gif/.bmp/.png文件）</font>");
			return null;
		}
		/*if (upload.length() > 90000 * 1024) {
			out.print("<font color=\"red\" size=\"2\">*文件大小不得大于900k</font>");
			return null;
		}*/

		// 将文件保存到项目目录下
		InputStream is = new FileInputStream(upload);
		String uploadPath = ServletActionContext.getServletContext()
				.getRealPath("/upload/cont_img"); // 设置保存目录
		System.out.println("uploadpath::::::" + uploadPath);
		String fileName = (new SimpleDateFormat("yyyyMMddHHmmss"))
				.format(new Date())
				+ java.util.UUID.randomUUID(); // 采用时间+UUID的方式随机命名
		fileName += uploadFileName.substring(uploadFileName.length() - 4);
		File toFile = new File(uploadPath, fileName);
		OutputStream os = new FileOutputStream(toFile);
		byte[] buffer = new byte[1024];
		int length = 0;
		while ((length = is.read(buffer)) > 0) {
			os.write(buffer, 0, length);
		}
		out.print("<font color=\"red\" size=\"2\">*文件上传成功</font>");
		String imguri1 = "/upload/cont_img/" + fileName;
		imguri.add(imguri1);
		session.put("imguri", imguri);
		is.close();
		os.close();
		
		
		String json = "{ \"error\" : 0, \"url\" : \"http://192.168.19.127:8080/ShareCup/upload/cont_img/"+ fileName+ "\"}";
		// 设置返回“图像”选项卡
		/*String callback = ServletActionContext.getRequest().getParameter(
				"CKEditorFuncNum");
		System.out.println("callback" + callback);
		out.println("<script type=\"text/javascript\">");
		out.println("alert(1)");
		out.println("window.parent.CKEDITOR.tools.callFunction(" + callback
				+ ",'"
				+ "http://192.168.19.127:8080/ShareCup/upload/cont_img/" + fileName + "'," + "'" + "')");
		out.println("alert(2)");
		out.println("</script>");
		System.out.println("window.parent.CKEDITOR.tools.callFunction(" + callback
				+ ",'"
				+ "http://192.168.19.127:8080/ShareCup/upload/cont_img/" + fileName + "'," +  "'"  + "')");*/
		return json;

	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		try {
			this.uploadFileName = new String(uploadFileName.getBytes("GBK"),
					"UTF-8");
		} catch (UnsupportedEncodingException e) {
			this.uploadFileName = uploadFileName;
			e.printStackTrace();
		}
	}

}
