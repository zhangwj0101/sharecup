<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
  	<%@ include file="../include/head.jsp"%>
	<%@ include file="../include/ui.jsp"%>
	<script type="text/javascript" src="<%=basePath %>js/common.js"></script>
  </head>
  <body>
    <div class="mainbox">
    	<div class="bm_bt"><span class="bmbt_txt">通知</span></div>
    	
    	       <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>${inform.title}　　(${inform.times})</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
		<p>
			${inform.content}
		</p>
      </div>
      <!-- End .content-box-content -->
    </div>
    	
    	
    </div>
  </body>
</html>
