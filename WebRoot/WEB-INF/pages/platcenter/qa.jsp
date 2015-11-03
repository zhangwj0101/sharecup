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
    	<div class="bm_bt"><span class="bmbt_txt">答疑解惑</span></div>
    	
   <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>答疑解惑</h3>
        
      </div>
    	    <!-- End .content-box-header -->
      <div class="content-box-content">
				<div class="show" style="padding:0px;">
				
				  	<!-- <table id="div_mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">

<tr>

<th scope="col" abbr="Configurations">问题</th>

<th scope="col" abbr="Configurations">解答</th>

<th scope="col" abbr="Dual 2.5">操作</th>

</tr>
<s:iterator  value="%{#request.qalist}" id="resource" status="i">
	<s:if test="((#i.index + 1)<=(#request.currPage*12)) && ((#i.index + 1)>((#request.currPage-1)*12))">
<tr>

<td scope="row" abbr="Model" class="spec"><s:property value="question"/></td>

<td scope="row" abbr="Model" class="spec"><s:property value="answer"/></td>

<td><a href="<%=basePath %>platcenter/platcenter_editqa.action?id=<s:property value="id"/> ">更改解答 </a>&nbsp;<a href="<%=basePath %>platcenter/platcenter_deleteqa.action?id=<s:property value="id"/> ">删除</a></td>

</tr>
</s:if>
</s:iterator>

</table> -->
	<table style ="table-layout:fixed;" id="div_mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
	<tr class="t_tr">
		<td>问题</td>
		<td>解答</td>
		<td>操作</td>
	</tr>
	<s:iterator  value="%{#request.qalist}" id="resource" status="i">
	<s:if test="((#i.index + 1)<=(#request.currPage*12)) && ((#i.index + 1)>((#request.currPage-1)*12))">
	<tr>
		<td><s:property value="question"/></td>

		<td><s:property value="answer"/></td>

		<td class="td_cen"><a href="<%=basePath %>platcenter/platcenter_editqa.action?id=<s:property value="id"/> ">更改解答 </a>&nbsp;<a href="<%=basePath %>platcenter/platcenter_deleteqa.action?id=<s:property value="id"/> ">删除</a></td>

	</tr>
</s:if>
</s:iterator>
</table>
  	</div>
 
  	<div class="page">
  	共<span><s:property value="#request.itemCount"/></span>条答疑&nbsp;&nbsp;
       	<span>当前是第 <s:property value="#request.currPage"/> / <s:property value="(#request.pageSize == 0)?(1):(#request.pageSize)"/> 页
       	    
	    	<span><a class="pageNav firstP home" href="<%=basePath %>platcenter/platcenter_qa.action?page=1">[首页]</a></span>
			<span><a class="pageNav preP pageup" href="<%=basePath %>platcenter/platcenter_qa.action?page=<s:property value="(#request.currPage > 1)?(#request.currPage - 1): (1)"/>">[上一页]</a></span>
			<span><a class="pageNav nextP nextpage" href="<%=basePath %>platcenter/platcenter_qa.action?page=<s:property value="(#request.currPage < #request.pageSize)?(#request.currPage + 1): (#request.pageSize)"/>">[下一页]</a></span>
			<span><a class="pageNav lastP lastpage" href="<%=basePath %>platcenter/platcenter_qa.action?page=<s:property value="#request.pageSize"/>">[末页]</a></span>
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
