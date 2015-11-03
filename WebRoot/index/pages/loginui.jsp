<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<script type="text/javascript" src="<%=basePath%>js/jquery-1.9.1.min.js"></script>



<div id="loginui" style="display: none;">
	<div id="user">
		<div class="u1">
			<p style="padding-top: 5px;">
				<span>用户名：</span><span><input name="username1" id="username1"
						tabindex="1" type="text" style="height: 20px;"> </span>
			</p>
			<p style="padding-top: 5px;">
				<span>密 码：</span><span><input name="password1" id="password1"
						tabindex="1" type="password" style="height: 20px;"> </span>
			</p>
			<p style="padding-top: 5px;">
				<span>验证码：</span>
				<span
					<input name="authcode1" id="authcode1" style="height: 20px; width: 60px" maxlength="4" tabindex="1" type="text"> </span>
						<span><jsp:include page="../include/img.jsp" flush="true"></jsp:include></span>
					</p>
					<p style="clear: both; margin-top: 15px;">
						<span><a href="<%=basePath%>forgetpass.action" target="_blank" id="forget-password">忘记密码？</a> </span>&nbsp;&nbsp;
						<span class="denglu_button" style="cursor: pointer;"><a id="denglu" type="button" onclick="check();"><img src="<%=basePath%>img/dl.png" border="0" /> </a> </span>
						<span class="zhuce_button"><a href="<%=basePath%>index/pageIndex_region.action" title="报名注册" class="bmzc"><img src="<%=basePath%>img/zc.png" border="0" alt="报名注册"> </a> </span>
					</p>
				</div>
			</div>
		</div>
		<form action="<%=basePath%>loggin.action" method="post" id="loginform">
			<input name="username" id="username_" type="hidden" value />
			<input name="password" id="password_" type="hidden" value />
			<input name="authcode" id="authcode_" type="hidden" value />
		</form>
	</div>
</div>

