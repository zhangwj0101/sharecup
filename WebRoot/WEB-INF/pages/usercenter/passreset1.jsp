<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
    <jsp:include page="../../../index/include/head.jsp" flush="true"></jsp:include>
	<LINK href="<%=basePath%>style/css/css.css" type=text/css rel=stylesheet>
	
	<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/link.js"></script>

	<title>找回密码</title>
	
  </head>
<BODY>
 <jsp:include page="../../../index/head.jsp" flush="true"></jsp:include>
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
		<s:if test="#request.msg != null"><span>${msg }</span></s:if>
		<s:elseif test="#request.r != null">
		<form action="<%=basePath %>passsubmit.action" method="post">
			请输入新密码：&nbsp;&nbsp;<input style="width:300px;display:inline-block;" type="text" id="pass0000" name="pass" value=""/>请输入确认密码：&nbsp;&nbsp;<input style="width:300px;display:inline-block;" type="text" id="repass0000" name="repass" value=""/><input name="s" type="hidden" value="${s }" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="return check()" style="width:40px;">提交</button>
			<script type="text/javascript">
				function check(){
					var pass = document.getElementById('pass0000').value;
					var repass = document.getElementById('repass0000').value;
					if(!pass){
						alert("密码不能为空！");
						return false;
					}
					if(pass != repass){
						alert("两次输入密码不一致！");
						return false;					
					}
					return true;
				}
			</script>
		</form>			
		</s:elseif>
		<s:else>
		<form action="<%=basePath %>passquestion.action" method="post">
			${question }：&nbsp;&nbsp;<input style="width:300px;display:inline-block;" type="text" name="answer" value=""/><input name="s" type="hidden" value="${s }" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button style="width:40px;">提交</button>
		</form>	
		</s:else>
		<br>
		<br>
		<br>
		<div id="regokbottom"></div>  
	  </div>   
  </div>   
<div class="clear"></div>
<jsp:include page="../../../index/foot.jsp" flush="true"></jsp:include>
<div id="tipDiv" style="position:absolute;z-index:1000;display:none;height:30px;" > 
<table width="100%" border="0" cellpadding="5" cellspacing="0"> 
<tr > 
<td width="100%" height="25" ><div id="taemTip" class="focus"></div></td> 
</tr> 
</table> 
</div>



</BODY></HTML>
