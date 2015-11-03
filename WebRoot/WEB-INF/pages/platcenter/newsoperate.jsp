<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
	<script type="text/javascript" src="<%=basePath %>js/common.js"></script>
	<style type="text/css">
		#div_mytable td{
			height: 40px; text-overflow: ellipsis;
		}
	</style>	
  </head>
  
  <body>
  	<div class="mainbox">
          
      <div class="mainbox">
    	<div class="bm_bt"><span class="bmbt_txt">上传新闻通知</span></div>
    	
   <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>新闻通知</h3>
        
      </div>
    	    <!-- End .content-box-header -->
      <div class="content-box-content">
				<div class="show" style="padding:0px;">
				
				  	<table style ="table-layout:fixed;" id="div_mytable" cellspacing="0">

<tr>
<td>文章标题</td>
<td>文章类别</td>
<td>操作</td>
</tr>
<s:iterator  value="%{#request.newslist}" id="resource" status="i">
	<s:if test="((#i.index + 1)<=(#request.currPage*12)) && ((#i.index + 1)>((#request.currPage-1)*12))">
<tr>
<td scope="row" abbr="Model" class="spec"><a href="<%=basePath %>platcenter/platcenter_getnews.action?id=<s:property value="id"/> "><s:property value="title"/></a></td>
<s:if test="type==1">
<td>新闻</td>
</s:if>
<s:if test="type==2">
<td>通知</td>
</s:if>
<s:if test="type==3">
<td>往届</td>
</s:if>

<td><a href="<%=basePath %>platcenter/platcenter_editnews.action?id=<s:property value="id"/> ">修改 </a>&nbsp;<a href="<%=basePath %>platcenter/platcenter_deletenews.action?id=<s:property value="id"/> ">删除</a></td>

</tr>
</s:if>
</s:iterator>

</table>
  	</div>
  	<a style="font-size:13px;color:red;padding-top:20px;" href="<%=basePath %>platcenter/platcenter_editnews.action ">添加新文章</a>
  	<div class="page">
  	共<span><s:property value="#request.itemCount"/></span>篇文章&nbsp;&nbsp;
       	<span>当前是第 <s:property value="#request.currPage"/> / <s:property value="(#request.pageSize == 0)?(1):(#request.pageSize)"/> 页
	    	<span><a class="pageNav firstP home" href="<%=basePath %>platcenter/platcenter_newsoperate.action?page=1">[首页]</a></span>
			<span><a class="pageNav preP pageup" href="<%=basePath %>platcenter/platcenter_newsoperate.action?page=<s:property value="(#request.currPage > 1)?(#request.currPage - 1): (1)"/>">[上一页]</a></span>
			<span><a class="pageNav nextP nextpage" href="<%=basePath %>platcenter/platcenter_newsoperate.action?page=<s:property value="(#request.currPage < #request.pageSize)?(#request.currPage + 1): (#request.pageSize)"/>">[下一页]</a></span>
			<span><a class="pageNav lastP lastpage" href="<%=basePath %>platcenter/platcenter_newsoperate.action?page=<s:property value="#request.pageSize"/>">[末页]</a></span>
	 	</div>
  
      </div>
      <!-- End .content-box-content -->
    </div>
    
  	</div>
  	
  	<form id="pageForm" action="<%=basePath %>platcenter/platcenter_resourceList.action" method="post">
					<input type="hidden" name="pageBean.pagesize" id="pageSize" value="${pageBean.pagesize }" />
					<input type="hidden" name="pageBean.pagenum" id="pageNum"  value="${pageBean.pagenum}" />
  </form>
  </body>
</html>
