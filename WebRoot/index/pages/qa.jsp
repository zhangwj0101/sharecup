<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>
<html>
  <head>
    <jsp:include page="../include/head.jsp" flush="true"></jsp:include>
	<script type="text/javascript">
	function postForm(frmname){

	if(Validata()){
		var postForm = document.forms[frmname];
		
		postForm.method = 'POST';
		
		postForm.submit();
		
		alert("问题提交成功！我们会尽快解答您的疑惑");
	}
}

/*function vss(){
    var topicContent=CKEDITOR.instances.editor1.getData();  
  
	if(topicContent == ''){
		return false;
	}
	return true;	
}*/	

function Validata(){
	
	var t_value = document.getElementById("title").value.replace(/\s/g, "");		
	if(t_value == ""){
		alert("问题不能为空");
		document.getElementById("title").focus();
		return false;
	}
	
	
	return true;
}


</script>
  </head>
  
 <body>
<div class="title"></div>
<div class="line_nav">
<jsp:include page="../../index/head.jsp" flush="true"></jsp:include>
</div>







		<div id="box">

          	<jsp:include page="../left.jsp"></jsp:include>
            
            
            <div class="right">
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="#">答疑解惑</a></p>
                
                
                <h2 class="h_title">答疑解惑</h2>
               
               
                <div class="p_cont">


	<s:iterator  value="%{#request.qalist}" id="resource" status="i">
		<s:if test="((#i.index + 1)<=(#request.currPage*12)) && ((#i.index + 1)>((#request.currPage-1)*12))">
		 <p class="div_p2">Question:<s:property value="question"/></p>
		 <p class="div_p2">Answer:<s:property value="answer"/></p>
		 <br/>
		 </s:if>
		 </s:iterator>
		 
		 <p class="p2">&nbsp;</p>
		 
		 
		<div class="page" style="margin-bottom:20px;">
  		共<span><s:property value="#request.itemCount"/></span>条答疑&nbsp;&nbsp;
       	<span>当前是第 <s:property value="#request.currPage"/> / <s:property value="(#request.pageSize == 0)?(1):(#request.pageSize)"/> 页
	    
	    	<span><a class="pageNav firstP home" href="<%=basePath %>index/pageIndex_qa.action?page=1">[首页]</a></span>
			<span><a class="pageNav preP pageup" href="<%=basePath %>index/pageIndex_qa.action?page=<s:property value="(#request.currPage > 1)?(#request.currPage - 1): (1)"/>">[上一页]</a></span>
			<span><a class="pageNav nextP nextpage" href="<%=basePath %>index/pageIndex_qa.action?page=<s:property value="(#request.currPage < #request.pageSize)?(#request.currPage + 1): (#request.pageSize)"/>">[下一页]</a></span>
			<span><a class="pageNav lastP lastpage" href="<%=basePath %>index/pageIndex_qa.action?page=<s:property value="#request.pageSize"/>">[末页]</a></span>
	 	</div>		 
		 
		     <form id="myform" name="myform" method="post" action="<%=basePath%>updateQa.action" enctype="multipart/form-data">
		     <p style="line-height:25px;font-weight:bold;">请在这里留下您的问题：</p>
		     <p><textarea id="title" name="question" style="width:100%; height:100px;" ></textarea></p>
  		</form>
 		 <div class="button" style="margin-top:20px; float:right;">
		      <input onclick="javascript:postForm('myform');" type="button" value="提交" style="width:60px; height:25px;"/>
		  </div>
		 <p class="p2">&nbsp;</p>
		 

                </div>
            </div>
          </div>	


<jsp:include page="../foot.jsp"></jsp:include>
</body>
</html>
