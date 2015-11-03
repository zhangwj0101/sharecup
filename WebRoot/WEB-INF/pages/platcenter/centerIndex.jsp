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
          
          <div class="notification attention png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div><s:property value="%{#session.user.name}"/>用户：<span>您好!</span><p>欢迎进入<span class="green">第三届大学生科技资源共享与服务创新实践竞赛</span>资源上报中心! </div>
    </div>
          
            <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>资源上报流程</h3>
        
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
      		<img alt="资源上传流程" src="<%=basePath %>/style/images/lct.jpg" />
      </div>
      <!-- End .content-box-content -->
    </div>
    
    
  	</div>
  </body>
</html>
