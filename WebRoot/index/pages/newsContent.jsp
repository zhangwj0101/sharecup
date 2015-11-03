<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
  	
	
	<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/link.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css" />
	<script src="<%=basePath%>js/jquery.js" type=text/javascript></script>
	<script src="<%=basePath%>js/accordion.js" type=text/javascript></script>
	<script src="<%=basePath%>js/cycle.js" type=text/javascript></script>
	<script type=text/javascript>
	<!--
		// Accordion
		jQuery().ready(function(){
			jQuery('#serviceContent').accordion({
			autoheight: false
			});
		});
		// Cycle
		$(function() {
			$('#fW_Content').cycle({ 
			fx:    'scrollLeft',
			pager: '#fW_Controls'
 			});
		});
	//-->
	</script>
  </head>
  
	<body>
    <div id="main_line">
      <div id="main">
        <div id="content">
          <jsp:include page="../head.jsp"></jsp:include>
          <div id="box">
          	
          	<jsp:include page="../left.jsp"></jsp:include>
          	
            <div class="right">
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_share.action">竞赛动态</a></p>
                <h2 class="h_title"><s:property value="#request.news.title"/></h2>
                <div class="p_cont">
                	<s:property value="#request.news.content" escape="false"/>
                </div>
            </div>
          </div>
		<jsp:include page="../foot.jsp"></jsp:include>
        </div>
      </div>
    </div>
</body>
</html>
