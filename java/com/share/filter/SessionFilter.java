package com.share.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SessionFilter implements Filter{

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		 HttpServletRequest req = (HttpServletRequest)request;
		 HttpServletResponse res = (HttpServletResponse)response;
		 String url1 = req.getRequestURL() + (req.getQueryString() == null ? "" : new StringBuilder("?").append(req.getQueryString()).toString());
		 
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

} 
