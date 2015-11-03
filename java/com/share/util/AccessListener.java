package com.share.util;


import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;



public class AccessListener implements HttpSessionListener {
	private static Logger logger = Logger.getLogger(AccessListener.class);
	private  static int sesCount = 0;
	public void sessionCreated(HttpSessionEvent event) {
		sesCount++;
		ThreadLocal<HttpSession> localSession = new ThreadLocal<HttpSession>();
		localSession.set(event.getSession());
        String sessionID = localSession.get().getId();
        logger.info("网站访问人数"+sesCount);
        logger.info("sessionID 创建"+sessionID);
	}

	public void sessionDestroyed(HttpSessionEvent event) {
		
	}
	

}
