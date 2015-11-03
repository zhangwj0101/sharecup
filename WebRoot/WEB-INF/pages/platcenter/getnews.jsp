<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
  </head>
  
  <body>
  	<div class="mainbox">
          
             <h2 class="h_title"><s:property value="#request.news.title"/></h2>
                <div class="p_cont">
                	<s:property value="#request.news.content" escape="false"/>
                </div>
    
    
  	</div>
  </body>
</html>
