<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
    <jsp:include page="../include/head.jsp" flush="true"></jsp:include>
	<LINK href="<%=basePath%>style/css/css.css" type=text/css rel=stylesheet>
	
	<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/link.js"></script>
	  <s:if test="%{#session.user==null||session.user.name==''}">
	  	<script>
	  		window.parent.location.href="<%=basePath%>loggout.action";
	  	</script>
	  </s:if>
  </head>
<BODY>
 <jsp:include page="../head.jsp" flush="true"></jsp:include>
<div class="clear"></div>

<!--<li style="position:relative;"><a href="#" title="导航菜单"><span>导航菜单</span></a><em></em></li>-->
<div class="clear"></div>
        <div class="wrap">
  <div id="regbox">
	<div id="reg_nr"><div id="reg_top"><span class="reg_txt">报名注册</span></div>
	 </div><div id="zclc"></div>
	<div id="zclc_nr">
	<div id="reg_nr_z">	
	<div id="regokbox">
	<div id="regok">
	<br>
	<br>
	<span class="regok_txt">注册成功!</span>
	<br><br>
	<span class="regok_txt1"><s:property value="#session.user.name"/></span>，欢迎您报名注册第三届大学生科技资源共享与服务创新实践竞赛！<br><br>
	<a href="<%=basePath %>usercenter/index.action">进入个人中心</a>&nbsp; &nbsp;<a href="<%=basePath %>index/pageIndex_share.action">查看竞赛动态</a>&nbsp; &nbsp;<a href="<%=basePath %>index/pageIndex.action">去竞赛首页</a><br><br>
	<br><br>
	<br>
	</div>
	</div>
	</div> 
	 <div id="regokbottom"></div>  
	</div>    	   
  </div>   
 </div>   
<div class="clear"></div>
<jsp:include page="../foot.jsp" flush="true"></jsp:include>
<div id="tipDiv" style="position:absolute;z-index:1000;display:none;height:30px;" > 
<table width="100%" border="0" cellpadding="5" cellspacing="0"> 
<tr > 
<td width="100%" height="25" ><div id="taemTip" class="focus"></div></td> 
</tr> 
</table> 
</div>



</BODY></HTML>
