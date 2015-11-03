<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>
<html>
  <head>
    <jsp:include page="../include/head.jsp" flush="true"></jsp:include>
	<LINK href="<%=basePath%>style/css/css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/link.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
  </head>
  
  <body>
  	 <jsp:include page="../head.jsp" flush="true"></jsp:include>
     <div class="clear"></div>
     <div class="wrap">
     <jsp:include page="../left.jsp" flush="true"></jsp:include>
<div id="flashbox">	
	<div id="side_r1">
	<div class="gxbox">	
	<div class="gx_bt"><span class="gx_bt_txt">精品文库</span></div>
	<div class="show">	<ul>
		<s:iterator  value="%{#request.librarylist}" id="library" status="i">
		 	<li class="show_lb"><a class="show_lbb" href="${library.url}" target="_blank">${library.title}</a></li>
		</s:iterator>
		
  </ul></div>
   <div class="page">当前第${pageBean.pagenum}页,共${pageBean.pagecount}页 <a href="javascript:PageTurning(${pageBean.pagesize },1,${pageBean.pagecount },'false');">首页</a><c:if test="${pageBean.pagenum ne 1 }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum-1 },${pageBean.pagecount },'false');">上一页</a></c:if><c:if test="${pageBean.pagenum lt pageBean.pagecount }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum+1 },${pageBean.pagecount },'false');">下一页</a></c:if> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagecount },${pageBean.pagecount },'false');">末页</a></div> 
  </div>
  </div>
  <form id="pageForm" action="pageIndex_libraryList" method="post">
					<input type="hidden" name="pageBean.pagesize" id="pageSize" value="${pageBean.pagesize }" />
					<input type="hidden" name="pageBean.pagenum" id="pageNum"  value="${pageBean.pagenum}" />
  </form>
<div class="clear"></div>
</div>
     </div>
   <jsp:include page="../foot.jsp" flush="true"></jsp:include>
  </body>
</html>
