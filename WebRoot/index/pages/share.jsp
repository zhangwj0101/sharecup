<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>
<html>
  <head>
    <jsp:include page="../include/head.jsp" flush="true"></jsp:include>
	
  </head>
  
 <body>
<div class="title"></div>
<div class="line_nav">
<jsp:include page="../../index/head.jsp" flush="true"></jsp:include>
</div>







		<div id="box">

          	<jsp:include page="../left.jsp"></jsp:include>
            
            
            <div class="right">
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="#">竞赛动态</a></p>
                
                
                <h2 class="h_title">竞赛动态</h2>
               
               
                <div class="p_cont">


	<s:iterator  value="%{#request.newslist}" id="resource" status="i">
		<s:if test="((#i.index + 1)<=(#request.currPage*12)) && ((#i.index + 1)>((#request.currPage-1)*12))">
		 <p class="p_bg1"><a href="<%=basePath %>getNewsById?id=<s:property value="id"/> "><s:property value="title"/></a></p>
		 </s:if>
		 </s:iterator>
		<!--  <p class="p2">&nbsp;</p>
		 <p class="p2">&nbsp;</p>  -->
		<div class="page" style="margin-top:15px;">
  		共<span><s:property value="#request.itemCount"/></span>篇文章&nbsp;&nbsp;
       	<span>当前是第 <s:property value="#request.currPage"/> / <s:property value="(#request.pageSize == 0)?(1):(#request.pageSize)"/> 页
	    
	    	<span><a class="pageNav firstP home" href="<%=basePath %>index/pageIndex_share.action?page=1">[首页]</a></span>
			<span><a class="pageNav preP pageup" href="<%=basePath %>index/pageIndex_share.action?page=<s:property value="(#request.currPage > 1)?(#request.currPage - 1): (1)"/>">[上一页]</a></span>
			<span><a class="pageNav nextP nextpage" href="<%=basePath %>index/pageIndex_share.action?page=<s:property value="(#request.currPage < #request.pageSize)?(#request.currPage + 1): (#request.pageSize)"/>">[下一页]</a></span>
			<span><a class="pageNav lastP lastpage" href="<%=basePath %>index/pageIndex_share.action?page=<s:property value="#request.pageSize"/>">[末页]</a></span>
	 	</div>



                </div>
            </div>
          </div>	


<jsp:include page="../foot.jsp"></jsp:include>
</body>
</html>
