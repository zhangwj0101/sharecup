package com.share.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.share.bean.Qa;
import com.share.dao.QaDao;
import com.share.util.PagingUtil;
import com.share.util.StringUtil;

public class QaAction extends ActionSupport implements
		ServletRequestAware, ServletResponseAware, SessionAware {

	private HttpServletRequest request;
	private HttpServletResponse response;
	private Map<String, Object> session;
	
	private String unicode = UUID.randomUUID().toString();

	private static final long serialVersionUID = 1L;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	private QaDao qaDao = new QaDao();
	private Qa qa = new Qa();
	public QaDao getQaDao() {
		return qaDao;
	}

	public void setQaDao(QaDao qaDao) {
		this.qaDao = qaDao;
	}

	public Qa getQa() {
		return qa;
	}

	public void setQa(Qa qa) {
		this.qa = qa;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	

	
	

	
	
	public String updateQa(){
		
		String question = request.getParameter("question");
		SimpleDateFormat dateFormat = new SimpleDateFormat(
		"yyyy-MM-dd HH:mm:ss");
		String q_time = dateFormat.format(new Date());
		
		qa.setQuestion(question);
		qa.setQ_time(q_time);
		qaDao.saveQa(qa);
		return SUCCESS;
	}
	
	
}