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
    	<div class="bm_bt"><span class="bmbt_txt">通知列表</span></div>
    	
    	       <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>通知列表</h3>
        
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
				<div class="show">	
	<ul>
		<s:iterator  value="%{#request.informlist}" id="inform" status="i">
		 	<li class="show_lb"><a class="show_lbb" style="float:left;" href="<%=basePath %>usercenter/usercenter_noticeContent.action?id=${inform.id}">${inform.title}</a><a style="float:right;margin-right: 100px;">${inform.times}</a></li>
		</s:iterator>
  	</ul>
  	</div>
   <div class="page">当前第${pageBean.pagenum}页,共${pageBean.pagecount}页 <a href="javascript:PageTurning(${pageBean.pagesize },1,${pageBean.pagecount },'false');">首页</a><c:if test="${pageBean.pagenum ne 1 }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum-1 },${pageBean.pagecount },'false');">上一页</a></c:if><c:if test="${pageBean.pagenum lt pageBean.pagecount }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum+1 },${pageBean.pagecount },'false');">下一页</a></c:if> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagecount },${pageBean.pagecount },'false');">末页</a></div> 
      </div>
      <!-- End .content-box-content -->
    </div>
    	
    	
    </div>
    <form id="pageForm" action="<%=basePath %>usercenter/usercenter_noticeList.action" method="post">
					<input type="hidden" name="pageBean.pagesize" id="pageSize" value="${pageBean.pagesize }" />
					<input type="hidden" name="pageBean.pagenum" id="pageNum"  value="${pageBean.pagenum}" />
  </form>
  </body>
</html>
