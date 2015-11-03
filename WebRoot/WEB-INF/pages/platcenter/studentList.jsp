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
    	<div class="bm_bt">
    		<span class="bmbt_txt">参赛用户</span>
    	</div>
 		<div style="padding:8px;float:right;">
			<form name="searchFrom" action="<%=basePath %>platcenter/platcenter_searchStudent.action" id="searchFrom" accept-charset="utf-8" style="display:inline-block;">
				<select name="field" id="searchField">
					<option value="1">姓名</option>
					<option value="2">院校</option>
					<option value="3">电话</option>
				</select>
				<input type="text" name="searchWord" id="searchWord" >
			</form>
			<button onclick="submit()">查找</button>
			<script type="text/javascript">
				function submit(){
					$('#searchWord').val(encodeURI($('#searchWord').val()));
					searchFrom.submit();
				}
			</script>
		</div>   	
   <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>报名列表</h3>
        
      </div>
    	    <!-- End .content-box-header -->
      <div class="content-box-content">
				<div class="show">
				
				  	<table style ="table-layout:fixed;" id="div_mytable" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series">
					
							<tr class="t_tr">
							
							<td>参赛者</td>
							<td>参赛主题</td>
							<td>院校</td>
							<td>电话</td>
							<td>上传作品</td>
							</tr>
							
							<s:iterator value="#request.userlist" id="student" status="i">
							<tr>
							<td class="td_center" vertical-align="center"><a target="_blank" href="<%=basePath %>usercenter/usercenter_regionInfo1.action?id=${student.id }" >${student.name }</a></td>
							<td>
							<s:iterator value="#student.resources" id="resource" status="st">
							${st.index+1 }, ${resource.subject }<br/>
							</s:iterator>
							</td>
							<td>${student.school }</td>
							<td>${student.phone }</td>
							<td>
							<s:iterator value="#student.resources" id="resource" status="st">
							<a target="_blank" title="上传时间：${resource.uptime }" href="<%=basePath %>resourceDown.action?filename=${resource.id }" >作品${st.index + 1 }</a><br/>
							</s:iterator>
							</td>
							</tr>
							</s:iterator>
					
					</table>
  			  </div>
   			<div class="page">当前第${pageBean.pagenum}页,共${pageBean.pagecount}页 <a href="javascript:PageTurning(${pageBean.pagesize },1,${pageBean.pagecount },'false');">首页</a><c:if test="${pageBean.pagenum ne 1 }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum-1 },${pageBean.pagecount },'false');">上一页</a></c:if><c:if test="${pageBean.pagenum lt pageBean.pagecount }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum+1 },${pageBean.pagecount },'false');">下一页</a></c:if> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagecount },${pageBean.pagecount },'false');">末页</a></div> 
    </div>
      <!-- End .content-box-content -->
    </div>
    
  	</div>
  	
  	<form id="pageForm" action="<%=basePath %>platcenter/platcenter_studentList.action" method="post">
		<input type="hidden" name="pageBean.pagesize" id="pageSize" value="${pageBean.pagesize }" />
		<input type="hidden" name="pageBean.pagenum" id="pageNum"  value="${pageBean.pagenum}" />
  </form>
  </body>
</html>
