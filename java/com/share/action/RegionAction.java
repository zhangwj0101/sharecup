package com.share.action;

import java.io.PrintWriter;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.StudentHeader;
import com.share.bean.StudentPlayer;
import com.share.bean.SystemInfo;
import com.share.bean.Teacher;
import com.share.bean.UserSession;
import com.share.dao.RegionDao;
import com.share.dao.StudentHeaderDao;
import com.share.dao.StudentPlayerDao;
import com.share.support.Utils;

public class RegionAction extends ActionSupport implements ServletRequestAware, ServletResponseAware {

	private static final long serialVersionUID = 6747585922299134477L;

	private StudentHeader header;

	private StudentPlayer player;
	private StudentPlayer player1;
 
	private StudentPlayer player2;
	private StudentPlayer player3;
	private StudentPlayer player4;
	private StudentPlayer player5;

	private Teacher teacher;

	private RegionDao regionDao;

	/** 用户名重复验证提示信息 */
	private String tip;
	/** 用户名*/
	private String username;
	/** 邮箱*/
	private String email;
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}
	
	public StudentHeader getHeader() {
		return header;
	}

	public void setHeader(StudentHeader header) {
		this.header = header;
	}

	public StudentPlayer getPlayer1() {
		return player1;
	}

	public void setPlayer1(StudentPlayer player1) {
		this.player1 = player1;
	}

	public StudentPlayer getPlayer2() {
		return player2;
	}

	public void setPlayer2(StudentPlayer player2) {
		this.player2 = player2;
	}
	
	

	public StudentPlayer getPlayer3() {
		return player3;
	}

	public void setPlayer3(StudentPlayer player3) {
		this.player3 = player3;
	}

	public StudentPlayer getPlayer4() {
		return player4;
	}

	public void setPlayer4(StudentPlayer player4) {
		this.player4 = player4;
	}

	public StudentPlayer getPlayer5() {
		return player5;
	}

	public void setPlayer5(StudentPlayer player5) {
		this.player5 = player5;
	}

	public StudentPlayer getPlayer() {
		return player;
	}
	
	public void setPlayer(StudentPlayer player) {
		this.player = player;
	}
	
	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}

	public RegionAction() {
		super();
		regionDao = new RegionDao();

	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * 注册
	 */
	@Override
	public String execute() {
		String method = request.getParameter("method");
		HttpSession session = request.getSession();
		String sessionID = session.getId();
		SystemInfo systemInfo = new SystemInfo();
		systemInfo.setAccessDate(new Date(System.currentTimeMillis()));
		String agent = request.getHeader("User-Agent");
		systemInfo.setAgent(agent);
		systemInfo.setLogin(true);
		String ip = Utils.getIpAddr(request);
		systemInfo.setWorkstation(ip);
		systemInfo.setSessionID(sessionID);
		String hashcode = sessionID + ip + agent;
		int hashticket = hashcode.hashCode();
		systemInfo.setHashticket(hashticket + "");
		boolean flag = false;
		String MD5_password = Utils.getMD5(header.getPassword());
		header.setPassword(MD5_password);
		if (method != null && method.equals("group")) {
			// flag = regionDao.GroupRegion(header, player1, player2, teacher, systemInfo);
			flag = regionDao.GroupRegion(header, teacher, systemInfo, player1, player2, player3, player4, player5);
			if (flag == true) {
				UserSession userSession = new UserSession();
				userSession.setId(header.getId());
				userSession.setUsername(header.getUsername());
				userSession.setName(header.getName());
				userSession.setQuestion(header.getQuestion());
				userSession.setAnswer(header.getAnswer());
				session.setAttribute("user", userSession);
			}
		}
		if (method != null && method.equals("person")) {
			header.setIfperson(true);
			flag = regionDao.personRegion(header, teacher, systemInfo);
			if (flag == true) {
				UserSession userSession = new UserSession();
				userSession.setId(header.getId());
				userSession.setUsername(header.getUsername());
				userSession.setName(header.getName());
				userSession.setQuestion(header.getQuestion());
				userSession.setAnswer(header.getAnswer());
				session.setAttribute("user", userSession);
			}
		}

		return SUCCESS;
	}
	
	public void addPlayer() {
		String message = "添加成功，请点击左侧‘报名信息’刷新结果！";
		try {
			username = java.net.URLDecoder.decode(player1.getName(), "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		List<StudentHeader> headers = new StudentHeaderDao().findByProperty("username", username, "User");
		if (headers == null || headers.size() == 0) {
			boolean result = regionDao.personAdd(header, player1);
			System.out.println("数据库操作成功：" + result);
		}else{
			message = "添加失败，该成员已经存在！";
		}
		
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter writer = response.getWriter();
			writer.print("<script type='text/javascript'>alert('" + message + "');</script>");
			writer.close();
		} catch (Exception e) {
		}
	}	
	
	
	public void editHeader() {
		String message = "修改成功，请点击左侧‘报名信息’刷新结果！";

		String sql = "update des_studentheader set addr='" + header.getAddr() + "',classes='" + header.getClasses() + "',code='" + header.getCode() + "',email='" + header.getEmail()
		+ "',faculty='" + header.getFaculty() + "',major='" + header.getMajor() + "',name='" + header.getName() + "',phone='" + header.getPhone() + "'" +
				",school='" + header.getSchool() + "' where id=" + header.getId();
		
		try{
			new StudentHeaderDao().updateSQL(sql);
		}catch (Exception e) {
			message = "修改失败，请您稍后重试！";
		}
		
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter writer = response.getWriter();
			writer.print("<script type='text/javascript'>alert('" + message + "');</script>");
			writer.close();
		} catch (Exception e) {
		}
	}
	
	
	public void editPlayer() {
		String message = "修改成功，请点击左侧‘报名信息’刷新结果！";

		try{
			// String sql = "update des_studentplayer set classes='" + player.getClasses() + "',code='" + player.getCode() + "',faculty='" + player.getFaculty() + "',major='" + player.getMajor() + "',name='" + player.getName() + "',phone='" + player.getPhone() + "',school='" + player.getSchool() + "' where id=" + player.getId();
			// new StudentPlayerDao().updateSQL(sql);
			player.setStudentHeader(header);
			regionDao.update(player);
		}catch (Exception e) {
			message = "修改失败，请您稍后重试！";
		}
		
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter writer = response.getWriter();
			writer.print("<script type='text/javascript'>alert('" + message + "');</script>");
			writer.close();
		} catch (Exception e) {
		}
	}	
	
	
	public void editTeacher() {
		String message = "修改成功，请点击左侧‘报名信息’刷新结果！";
		
		teacher.setStudentHeader(header);

		try{
			regionDao.update(teacher);
		}catch (Exception e) {
			message = "修改失败，请您稍后重试！";
		}
		
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter writer = response.getWriter();
			writer.print("<script type='text/javascript'>alert('" + message + "');</script>");
			writer.close();
		} catch (Exception e) {
		}
	}		
	
	public void delPlayer() {
		String message = "删除成功，请点击左侧‘报名信息’刷新结果！";
		
		try{
			new StudentPlayerDao().delete(player);
		}catch (Exception e) {
			message = "操作失败，请您稍后重试！";
		}
		
		try {
			response.setCharacterEncoding("utf-8");
			PrintWriter writer = response.getWriter();
			writer.print("<script type='text/javascript'>alert('" + message + "');</script>");
			writer.close();
		} catch (Exception e) {
		}
	}			
	
	public String selType() {
		request.setAttribute("method", request.getParameter("method"));
		return SUCCESS;
	}

	public String regionAjax() {
		Map<String, String> resultMap = new HashMap<String, String>();
		try {
			username = java.net.URLDecoder.decode(username, "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		List<StudentHeader> headers = new StudentHeaderDao().findByProperty("username", username, "User");
		if (headers == null || headers.size() == 0) {
			resultMap.put("tip", "");
		} else {
			resultMap.put("tip", "该用户名已经存在！");
		}
		JSONArray jsons = JSONArray.fromObject(resultMap);
		this.tip = jsons.toString();
		return SUCCESS;
	}

	public String regionAjaxEmail() {
		Map<String, String> resultMap = new HashMap<String, String>();
		try {
			email = java.net.URLDecoder.decode(email, "UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		List<StudentHeader> headers = new StudentHeaderDao().findByProperty("email", email, "User");
		if (headers == null || headers.size() == 0) {
			resultMap.put("tip", "");
		} else {
			resultMap.put("tip", "该邮箱已经注册过！");
		}
		JSONArray jsons = JSONArray.fromObject(resultMap);
		this.tip = jsons.toString();
		return SUCCESS;
	}
	private HttpServletRequest request;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	private HttpServletResponse response;
}
