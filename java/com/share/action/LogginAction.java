package com.share.action;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.PlatSystemInfo;
import com.share.bean.Platform;
import com.share.bean.StudentHeader;
import com.share.bean.SystemInfo;
import com.share.bean.User;
import com.share.bean.UserSession;
import com.share.dao.PlatSystemInfoDao;
import com.share.dao.PlatformDao;
import com.share.dao.StudentHeaderDao;
import com.share.dao.SystemInfoDao;
import com.share.dao.UserDao;
import com.share.support.Utils;

public class LogginAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = -78599898128906407L;

	private String username;
	private String password;
	private StudentHeaderDao studentHeaderDao;
	private SystemInfoDao systemInfoDao;
	private PlatformDao platformDao;
	private PlatSystemInfoDao platSystemInfoDao;
	private UserDao userDao;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LogginAction() {
		super();
		studentHeaderDao = new StudentHeaderDao();
		systemInfoDao = new SystemInfoDao();
		platformDao = new PlatformDao();
		platSystemInfoDao = new PlatSystemInfoDao();
		userDao = new UserDao();

	}

	@Override
	public String execute() {

		HttpSession session = request.getSession();

		session.removeAttribute("tip");

		String rand = (String) session.getAttribute("rand");
		String authcode = request.getParameter("authcode");
		if (authcode == null || !authcode.equals(rand)) {
			session.setAttribute("tip", "验证码输入错误！");
			return ERROR;
		}
		List<User> users = userDao.findByProperty("username", username, "User");

		if (users != null && users.size() > 0) {
			User user = users.get(0);
			StudentHeader header = (StudentHeader) studentHeaderDao.findById(
					user.getId(), "com.share.bean.StudentHeader");
			Platform platform = (Platform) platformDao.findById(user.getId(),
					"com.share.bean.Platform");
			UserSession userSession = new UserSession();
			boolean flag = false;
			flag = Utils.getMD5(password).equals(user.getPassword());
			if (flag) {
				if (header != null) {
					List<SystemInfo> systemInfos = systemInfoDao
							.findByProperty("header", header, "SystemInfo");
					if (systemInfos != null && systemInfos.size() > 0) {
						SystemInfo systemInfo = systemInfos.get(0);
						String sessionID = session.getId();
						systemInfo.setAccessDate(new Date(System
								.currentTimeMillis()));
						String agent = request.getHeader("User-Agent");
						systemInfo.setAgent(agent);
						String ip = Utils.getIpAddr(request);
						systemInfo.setWorkstation(ip);
						int flagD = systemInfo.getFlag() + 1;
						systemInfo.setFlag(flagD);
						userSession.setFlag(flagD);
						systemInfo.setLogin(true);
						systemInfo.setSessionID(sessionID);
						String hashcode = sessionID + ip + agent;
						int hashticket = hashcode.hashCode();
						systemInfo.setHashticket(hashticket + "");
						systemInfoDao.merge(systemInfo);
					}
					userSession.setId(header.getId());
					userSession.setUsername(header.getUsername());
					userSession.setName(header.getName());
					userSession.setQuestion(header.getQuestion());
					userSession.setAnswer(header.getAnswer());
					session.setAttribute("user", userSession);
					if ("1".equals(user.getUsertype())) {
						session.setAttribute("type_", "admin_success");
						session.removeAttribute("tip");
						return "admin_success";
					} else {
						session.setAttribute("type_", "header_success");
						session.removeAttribute("tip");
						return "header_success";
					}

				} else if (platform != null) {
					List<PlatSystemInfo> systemInfos = platSystemInfoDao
							.findByProperty("platform", platform,
									"PlatSystemInfo");
					if (systemInfos != null && systemInfos.size() > 0) {
						PlatSystemInfo systemInfo = systemInfos.get(0);
						String sessionID = session.getId();
						systemInfo.setAccessDate(new Date(System
								.currentTimeMillis()));
						String agent = request.getHeader("User-Agent");
						systemInfo.setAgent(agent);
						String ip = Utils.getIpAddr(request);
						int flagD = systemInfo.getFlag() + 1;
						systemInfo.setFlag(flagD);
						userSession.setFlag(flagD);
						systemInfo.setWorkstation(ip);
						systemInfo.setSessionID(sessionID);
						systemInfo.setLogin(true);
						String hashcode = sessionID + ip + agent;
						int hashticket = hashcode.hashCode();
						systemInfo.setHashticket(hashticket + "");
						systemInfoDao.merge(systemInfo);
					}
					userSession.setId(platform.getId());
					userSession.setUsername(platform.getUsername());
					userSession.setName(platform.getName());
					session.setAttribute("user", userSession);
					if ("1".equals(user.getUsertype())) {
						session.setAttribute("type_", "admin_success");
						session.removeAttribute("tip");
						return "admin_success";
					} else {
						session.setAttribute("type_", "plat_success");
						session.removeAttribute("tip");
						return "plat_success";
					}
				} else {
					return ERROR;
				}
			} else {
				session.setAttribute("tip", "密码输入错误！");
				return ERROR;
			}
		} else {
			session.setAttribute("tip", "用户名不存在！");
			return ERROR;
		}
	}

	public String forward() {

		HttpSession session = request.getSession();
		String type = (String) session.getAttribute("type_");

		if (type != null && !"".equals(type)) {
			return type;
		} else {
			return "error";
		}
	}

	public String loggout() {
		HttpSession session = request.getSession();
		if (session == null) {
			return SUCCESS;
		}

		if (session.getAttribute("user") == null) {
			return SUCCESS;
		}

		UserSession userSession = (UserSession) session.getAttribute("user");

		Integer userid = userSession.getId();
		User user = (User) userDao.findById(userid, "com.share.bean.User");
		StudentHeader header = null;
		Platform platform = null;
		if (user.instanceOf(StudentHeader.class)) {
			header = (StudentHeader) studentHeaderDao.findById(user.getId(),
					"com.share.bean.StudentHeader");
			List<SystemInfo> systemInfos = systemInfoDao.findByProperty(
					"header.id", header.getId(), "SystemInfo");
			if (systemInfos != null && systemInfos.size() > 0) {
				SystemInfo systemInfo = systemInfos.get(0);
				systemInfo.setAccessDate(new Date(System.currentTimeMillis()));
				systemInfo.setLogin(false);
				systemInfoDao.merge(systemInfo);
			}
		}
		if (user.instanceOf(Platform.class)) {
			platform = (Platform) platformDao.findById(user.getId(),
					"com.share.bean.Platform");
			List<PlatSystemInfo> systemInfos = platSystemInfoDao
					.findByProperty("platform.id", platform.getId(),
							"PlatSystemInfo");
			if (systemInfos != null && systemInfos.size() > 0) {
				PlatSystemInfo systemInfo = systemInfos.get(0);
				systemInfo.setAccessDate(new Date(System.currentTimeMillis()));
				systemInfo.setLogin(false);
				systemInfoDao.merge(systemInfo);
			}
		}

		session.setAttribute("user", null);
		session.removeAttribute("user");
		return SUCCESS;
	}

	private HttpServletRequest request;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
