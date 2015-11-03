package com.share.util;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.share.bean.PlatSystemInfo;
import com.share.bean.Platform;
import com.share.bean.StudentHeader;
import com.share.bean.SystemInfo;
import com.share.bean.User;
import com.share.bean.UserSession;
import com.share.dao.PlatSystemInfoDao;
import com.share.dao.SystemInfoDao;
import com.share.dao.UserDao;
import com.share.support.Utils;

public class SecurityInterceptor extends AbstractInterceptor {

	private static final long serialVersionUID = 2821631303214202423L;
	
	
	@Override
	public void destroy() {
		super.destroy();
	}

	@Override
	public void init() {
		super.init();
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(session==null||session.getAttribute("user")==null){
			return Action.LOGIN;
		}
		UserSession userSession = (UserSession)session.getAttribute("user");
		if(userSession!=null){
			UserDao userDao = new UserDao();
			User user = (User)userDao.findById(userSession.getId(), "com.share.bean.User");
			String agent = "";
			String ip = "";
			String sessionID = "";
			String hashcode = "";
			int hashticket = 0;
			if(user.instanceOf(StudentHeader.class)){
				SystemInfoDao systemInfoDao = new SystemInfoDao();
				SystemInfo systemInfo = (SystemInfo)systemInfoDao.findByProperty("header.id", user.getId(), "SystemInfo").get(0);
				if(userSession.getFlag()!=systemInfo.getFlag()){
					return "relogin";
				}
				agent = request.getHeader("User-Agent");
				ip = Utils.getIpAddr(request);
				sessionID = session.getId();
				hashcode = sessionID + ip + agent;
				hashticket = hashcode.hashCode();
				if(agent.equals(systemInfo.getAgent())&&ip.equals(systemInfo.getWorkstation())&&sessionID.equals(systemInfo.getSessionID())&&hashticket==Integer.parseInt(systemInfo.getHashticket())){
					return invocation.invoke();
				}else{
					return Action.LOGIN;
				}
			}else if(user.instanceOf(Platform.class)){
				 PlatSystemInfoDao systemInfoDao = new PlatSystemInfoDao();
				PlatSystemInfo systemInfo = (PlatSystemInfo)systemInfoDao.findByProperty("platform.id", user.getId(), "PlatSystemInfo").get(0);
				if(userSession.getFlag()!=systemInfo.getFlag()){
					return "relogin";
				}
				agent = request.getHeader("User-Agent");
				ip = Utils.getIpAddr(request);
				sessionID = session.getId();
				hashcode = sessionID + ip + agent;
				hashticket = hashcode.hashCode();
				if(agent.equals(systemInfo.getAgent())&&ip.equals(systemInfo.getWorkstation())&&sessionID.equals(systemInfo.getSessionID())&&hashticket==Integer.parseInt(systemInfo.getHashticket())){
					return invocation.invoke();
				}else{
					return Action.LOGIN;
				} 
				 
			}else {
				return Action.LOGIN;
			}
			
		}else{
			return Action.LOGIN;
		}
		
	}



}
