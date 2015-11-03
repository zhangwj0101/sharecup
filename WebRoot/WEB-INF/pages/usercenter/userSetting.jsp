<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
	<script type="text/javascript">
	   $(document).ready(function(){             
               checkValue();
        });
	function checkValue(){
	$("#prepassword").bind("blur",function(){
			var values = $("#prepassword").val();
			if(values==''){
				$('#prepasswordtip').html('<font color="red">*　密码不能为空！</font>');
			}else{
				var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
				if(!info.test(values)){
					$('#prepasswordtip').html('<font color="red">*　请输入6-12位字符，必须以字母开头，可以包含数字、下划线和点</font>');
				}else{
					$('#prepasswordtip').html('<image src="<%=basePath%>style/images/icons/tick_circle.png" />');
				}
			}
		});
		
		$("#newpassword").bind("blur",function(){
			var values = $("#newpassword").val();
			if(values==''){
				$('#newpasswordtip').html('<font color="red">*　密码不能为空！</font>');
			}else{
				var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
				if(!info.test(values)){
					$('#newpasswordtip').html('<font color="red">*　请输入6-12位字符，必须以字母开头，可以包含数字、下划线和点</font>');
				}else{
					$('#newpasswordtip').html('<image src="<%=basePath%>style/images/icons/tick_circle.png" />');
				}
			}
		});
		
		$("#sepassword").bind("blur",function(){
			var value1 = $("#sepassword").val();
			var value2 = $("#newpassword").val();
			if(value1==''){
				$('#sepasswordtip').html('<font color="red">*　确认密码不能为空！</font>');
			}else{
				var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
				if(value1!=value2){
					$('#sepasswordtip').html('<font color="red">*　两次密码输入不相同！</font>');
				}else{
					$('#sepasswordtip').html('<image src="<%=basePath%>style/images/icons/tick_circle.png" />');
				}
			}
		});
	
	
	}
		function checkForm(){
			var prepassword = $('#prepassword').val();
			if(prepassword==''){
				$('#prepasswordtip').html('<font color="red">*　密码不能为空！</font>');
					return false;
			}else{
				var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
				if(!info.test(prepassword)){
					$('#prepasswordtip').html('<font color="red">*　请输入6-12位字符，必须以字母开头，可以包含数字、下划线和点</font>');
					return false;
				}
			}
			
			var newpassword = $('#newpassword').val();
			if(newpassword==''){
				$('#newpasswordtip').html('<font color="red">*　密码不能为空！</font>');
					return false;
			}else{
				var info = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,11}$/;
				if(!info.test(prepassword)){
					$('#newpasswordtip').html('<font color="red">*　请输入6-12位字符，必须以字母开头，可以包含数字、下划线和点</font>');
					return false;
				}
			}
			
			var sepassword = $('#sepassword').val();
			if(sepassword==''){
				$('#sepasswordtip').html('<font color="red">*　密码不能为空！</font>');
					return false;
			}else{
				if(sepassword!=newpassword){
					$('#sepasswordtip').html('<font color="red">*　两次密码输入不相同</font>');
					return false;
				}
			}
		
		}
	</script>
  </head>
  <body>
    <div class="mainbox">
    	<div class="bm_bt"><span class="bmbt_txt">用户设置</span></div>
    	
      	  <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>用户设置</h3>
        
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <form action="<%=basePath%>changePassword.action" <s:if test="%{#request.flag==true}"> onsubmit="return checkForm();" </s:if> method="post">
       		 <fieldset>
       		<div class="notification error png_bg" <c:if test="${tip!=null&&tip!=''}">style="display:block;"</c:if> <c:if test="${tip==''||tip==null}">style="display:none;"</c:if> > <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      			<div>
      			${tip}
      			</div>
    		</div>
    		<table>
    		<s:if test="%{#request.flag==false}">
    			<input type="hidden" name="type" value="security"/>
			    <tr>
					<td width="100" class="bm_h">密保问题：</td>
					<td>
					<s:property value="%{#session.user.question}"/>?
					</td>
				</tr>
				 <tr>
					<td width="100" class="bm_h">答案：</td>
					<td>
					<input class="text1" type="text" id="small-input" name="answer" />&nbsp;&nbsp;<input class="button" type="submit" value="确定" />
					</td>
				</tr>
				</s:if>
				<s:if test="%{#request.flag==true}">
				<tr>
					<td width="100" class="bm_h">原始密码：</td>
					<td>
					<input class="text1" type="password"  id="prepassword" name="prepassword" />&nbsp;&nbsp;<span id="prepasswordtip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr>
					<td width="100" class="bm_h">新密码：</td>
					<td>
					<input class="text1" type="password" id="newpassword" name="newpassword" />&nbsp;&nbsp;<span id="newpasswordtip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr>
					<td width="100" class="bm_h">确认密码：</td>
					<td>
					<input class="text1" type="password" id="sepassword" name="sepassword" />&nbsp;&nbsp;<span id="sepasswordtip"><font color="red">*</font></span>
					</td>
				</tr>
				</s:if>
			</table>
			<s:if test="%{#request.flag==true}">
			<br/>	
      		  <p style="margin-left:70px;"><input class="button" type="submit" value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;<input class="button" type="reset" value="重置" /></p>
      		 </s:if>
      		 </fieldset>
      	</form>
      		
      </div>
      <!-- End .content-box-content -->
    </div>
    	
    	
    </div>
  </body>
</html>
