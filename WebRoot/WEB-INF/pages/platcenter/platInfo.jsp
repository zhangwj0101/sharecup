<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
  </head>
  
  <body>
  	<div class="mainbox">
          
          <div class="bm_bt"><span class="bmbt_txt">用户信息</span></div>
          
          <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>用户信息</h3>
        
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <form action="<%=basePath%>platcenter/platcenter_saveInfo.action" onsubmit="return checkForm();" method="post">
       		 <fieldset>
       		<div class="notification error png_bg" <c:if test="${tip!=null&&tip!=''}">style="display:block;"</c:if> <c:if test="${tip==''||tip==null}">style="display:none;"</c:if> > <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      			<div>
      			${tip}
      			</div>
    		</div>
    		<table>
				<tr>
					<td width="100" class="bm_h">联系人姓名：</td>
					<td>
					<input class="text1" type="text" id="linkname" value="<s:property value="platform.linkname"/>" name="platform.linkname" />&nbsp;&nbsp;<span id="linknametip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr>
					<td width="100" class="bm_h">电子邮箱：</td>
					<td>
					<input class="text1" type="text" id="linkemail" value="<s:property value="platform.linkemail"/>" name="platform.linkemail" />&nbsp;&nbsp;<span id="linkemailtip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr>
					<td width="100" class="bm_h">联系人电话：</td>
					<td>
					<input class="text1" type="text" id="linkphone" value="<s:property value="platform.linkphone"/>" name="platform.linkphone" />&nbsp;&nbsp;<span id="linkphonetip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr>
					<td width="100" class="bm_h">联系人地址：</td>
					<td>
					<input class="text1" type="text" id="linkaddr" value="<s:property value="platform.linkaddr"/>" name="platform.linkaddr" />&nbsp;&nbsp;<span id="linkaddrtip"><font color="red">*</font></span>
					</td>
				</tr>
			</table>
			<br/>	
      		  <p style="margin-left:70px;"><input class="button" type="submit" value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;<input class="button" type="reset" value="重置" /></p>
      		 </fieldset>
      	</form>
      		
      </div>
      <!-- End .content-box-content -->
    </div>
    
    
  	</div>
  </body>
</html>
