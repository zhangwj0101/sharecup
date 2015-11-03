<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
	<script type="text/javascript" src="<%=basePath %>js/common.js"></script>
  </head>
  
  <body>
  	<div class="mainbox">
          
      <div class="mainbox">
    	<div class="bm_bt"><span class="bmbt_txt">上报资源列表</span></div>
    	
   <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>资源列表</h3>
        
      </div>
    	    <!-- End .content-box-header -->
      <div class="content-box-content">
				<div class="show">
				
				  	<table id="mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">

<tr>

<th scope="col" abbr="Configurations">数据集名称</th>

<th scope="col" abbr="Dual 2.8">所属平台</th>

<th scope="col" abbr="Dual 2">浏览量</th>
<th scope="col" abbr="Dual 2">下载量</th>

<th scope="col" abbr="Dual 2">评价分数</th>

<th scope="col" abbr="Dual 2.5">查看详细</th>

</tr>
<s:iterator  value="%{#request.resourcelist}" id="resource" status="i">
<tr>

<th scope="row" abbr="Model" class="spec"><a href="<%=basePath %>platcenter/platcenter_resourceReport.action?id=${resource.id}">${resource.name}</a></th>

<td>${resource.origin }</td>

<td><s:if test="%{#request.resource.sourceBrowse==null}">0</s:if><s:else>${resource.sourceBrowse.browseNum}</s:else></td>
<td>${fn:length(resource.sourceDowns)}</td>

<td>${resource.score}</td>

<td><a href="<%=basePath %>platcenter/platcenter_resourceReport.action?id=${resource.id}" >查看详情 </a></td>

</tr>
</s:iterator>

</table>
  	</div>
   <div class="page">当前第${pageBean.pagenum}页,共${pageBean.pagecount}页 <a href="javascript:PageTurning(${pageBean.pagesize },1,${pageBean.pagecount },'false');">首页</a><c:if test="${pageBean.pagenum ne 1 }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum-1 },${pageBean.pagecount },'false');">上一页</a></c:if><c:if test="${pageBean.pagenum lt pageBean.pagecount }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum+1 },${pageBean.pagecount },'false');">下一页</a></c:if> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagecount },${pageBean.pagecount },'false');">末页</a></div> 
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
