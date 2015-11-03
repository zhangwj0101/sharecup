<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../include/tags.jsp"%>
<html>
<head>
	<title>网站错误(error)</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>style/css/404.css" /> 
</head>
<body>
 <div class="col-all">
        <div class="line_box">
            <h3>
                <span>重新登录</span></h3>
            <div class="error_page">
                <h1>登录超时</h1>
                <p> 请重新登录用户中心！页面3秒后将自动跳转登录页面</p>
               <script type="text/javascript">
               		returnIndex(3);
               		
               		function returnIndex(secs){
               			
               			if(--secs>0){
               				 setTimeout("returnIndex("+secs+")",1000);     
               			}else{
               				window.parent.location.href="<%=basePath%>loggout.action";
               			}
               		}
               </script>
            </div>
            <div class="clear">
            </div>
        </div>
 </div>
</body>
</html>