<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/tags.jsp"%>
<html>
<head>
<title>用户中心</title>
<%@ include file="include/head.jsp"%>
<link href="<%=basePath%>style/css/css.css" type=text/css rel=stylesheet />
<link href="<%=basePath%>style/css/left.css" type=text/css rel=stylesheet />
<script type="text/javascript" src="<%=basePath %>js/left.js"></script>
<script type="text/javascript">
	window.setInterval("reinitIframe()", 200);
	function reinitIframe(){ 
	var iframe = document.getElementById("frame_content"); 
	try{ 
	var bHeight = iframe.contentWindow.document.body.scrollHeight; 
	var dHeight = iframe.contentWindow.document.documentElement.scrollHeight; 
	var height = Math.max(bHeight, dHeight); 
	iframe.height =  height; 
	}catch (ex){} 
	}  
</script>
</head>
<body>
<div class="user_main">
<!-- 头部 -->
   <div class="user_topbox"><div class="user_top"><div class="user_top_r"><p style="float:right;margin-top: 120px;margin-right:20px;"><a href="<%=basePath %>index/pageIndex.action"  class="u_dh">竞赛首页</a>　 <a href="<%=basePath %>loggout.action" class="u_dh">退出</a></p></div></div>
  </div>
<!-- 头部 -->
<div class="clear"></div>
<!-- 左侧导航 -->
<div class="left">
<div id="foldmenu" class="foldmenu" style="float:left;">
<ul class="open">
		<span class="bt1"></span>		
		    <li><a target="main"  href="<%=basePath %>platcenter/platcenter.action">中心首页</a></li>
			<li><a target="main"  href="<%=basePath %>platcenter/platcenter_platInfo.action">用户信息</a></li>
			<li><a target="main" href="<%=basePath %>platcenter/platcenter_resourceList.action">资源列表</a></li>
			<li><a target="main" href="<%=basePath %>platcenter/platcenter_resourceReport.action">资源上报</a></li>
			<li><a target="main" href="<%=basePath %>platcenter/platcenter_studentList.action">参赛人员</a></li>
			<li><a target="main" href="<%=basePath %>platcenter/platcenter_subjectList.action">已交作品</a></li>
			<li><a target="main" href="<%=basePath %>platcenter/platcenter_newsoperate.action">新闻通知</a></li>
			<li><a target="main" href="<%=basePath %>platcenter/platcenter_qa.action">答疑解惑</a></li>
			<li><a target="main" href="<%=basePath %>platcenter/platcenter_statistics.action">报名统计</a></li>
			<li><a target="main" href="<%=basePath %>platcenter/platcenter_platZuopinNum.action">上交作品统计</a></li>
			</ul>
<div style="margin-top:50px;display:none;">
<iframe width="219" height="144" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?language=&width=220&height=144&fansRow=2&ptype=1&speed=0&skin=-1&isTitle=1&noborder=1&isWeibo=1&isFans=1&uid=1832747147&verifier=02959ff0&colors=1a72b1,bfdaf7,666666,0082cb,ecfbfd&dpc=1"></iframe>
</div>
<div class="lx" style="margin-top:50px;">
<p>邮箱：share@escience.gov.cn </p>
<p>电话：010－82339102 82339077</p>
<p>传真：010－82339924</p>
</div>			
</div>
</div>
<!-- 左侧导航 -->

<!-- iframe -->
<div class="maindiv">
<iframe src="<%=basePath %>platcenter/platcenter.action" name="main" class="mainframe" id="frame_content" scrolling="no" frameborder="0" onload="this.height=100;"></iframe>
</div>
<!-- iframe -->

<script type="text/javascript">
window.onload = function() {
myMenu = new FOLDMenu("foldmenu",true);
myMenu.init();
};
</script>
</div>
</body>
</html>
