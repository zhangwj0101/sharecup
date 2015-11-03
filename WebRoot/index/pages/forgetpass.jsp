<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
    <jsp:include page="../include/head.jsp" flush="true"></jsp:include>
	<LINK href="<%=basePath%>style/css/css.css" type=text/css rel=stylesheet>
	
	<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/link.js"></script>

	<title>找回密码</title>
	
  </head>
<BODY>
 <jsp:include page="../head.jsp" flush="true"></jsp:include>
<div class="clear"></div>

<!--<li style="position:relative;"><a href="#" title="导航菜单"><span>导航菜单</span></a><em></em></li>-->
<div class="clear"></div>
  <div class="wrap">
	  <div id="regbox">
		<div id="reg_nr">
			<div id="reg_top" style="padding-bottom:15px; border-bottom:1px solid ;"><span class="reg_txt">忘记密码</span></div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<form action="<%=basePath %>sendemail.action" method="post">
			请输入您注册时填写的邮箱地址：&nbsp;&nbsp;<input style="width:400px;display:inline-block;" type="text" name="email" id="email0000" value=""/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="if(!document.getElementById('email0000').value){alert('请输入电子邮件地址！');return false;}" style="width:40px;">提交</button>
		</form>
		<br>
		<br>
		<br>
		<div id="regokbottom"></div>  
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
