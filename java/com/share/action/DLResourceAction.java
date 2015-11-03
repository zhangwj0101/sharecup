package com.share.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class DLResourceAction extends ActionSupport implements
		ServletRequestAware {

	private HttpServletRequest request;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String upload() {
		return SUCCESS;
	}

	public String download() {
		return SUCCESS;
	}
	
	public String list (){
		return SUCCESS;
	}
	
	public static void main(String[] args) {
		
	}
}
