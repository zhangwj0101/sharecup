<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/fbwz.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="<%=basePath%>index/include/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
function postForm(frmname){
	if(Validata()){
		var postForm = document.forms[frmname];
		postForm.method = 'POST';
		postForm.submit();
	}
}

function vss(){
    var topicContent=CKEDITOR.instances.editor1.getData();  
  
	if(topicContent == ''){
		return false;
	}
	return true;	
}	

function Validata(){
	var t_value = document.getElementById("title").value.replace(/\s/g, "");		
	if(t_value == ""){
		alert("文章标题不能为空");
		document.getElementById("title").focus();
		return false;
	}else if(t_value.length > 30){
		alert("文章标题请勿超过30个字");
		document.getElementById("title").focus();
		return false;
	}
	
	var editor = document.getElementById("editor1").value;
	if(!vss()){
		alert("文章内容不能为空");
		return false;
	}
	
	/*if(!validatacheck()){
		return false;
	}
	
	if(!sg()){
		return false;
	}
	*/
	return true;
}

function validatacheck(){

	var science = document.getElementsByName("science");
	var flag = false;
		for (i = 0; i < science.length; i++) {
			var radio  = science[i];
				if(radio.checked){
					flag = true;
					break;
				}
		}
	if(!flag){
		alert("请选择文章分类");
		return false;
	}
	
	
	var interest =document.getElementsByName("interest");
	var flag1 = false;
		for (i = 0; i < interest.length; i++) {
			var radio  = interest[i];
				if(radio.checked){
					flag1 = true;
					break;
				}
		}
	if(!flag1){
		alert("请选择访问权限");
		return false;
	}
	return true;
}

function sg(){
	
	var check =document.getElementsByName("science1");
	var flag = false;
		for (i = 0; i < check.length; i++) {
			var radio  = check[i];
			if(radio.checked){
				if(radio.value == 0){
					var outweb =document.getElementsByName("outweb");
					for (i = 0; i < outweb.length; i++) {
						var radio1  = outweb[i];
						if(radio1.checked){
						flag = true;
						break;
						}
					}
				}
				if(radio.value == 1){
					flag = true;
					break;
				}
			}
		}
	/*if(!flag){
		alert("请选择发布位置");
		return false;
	}
	*/
	return true;
}
</script>
</head>

<body>
      <div class="title">

      </div>
	  <div class="line_nav">
<ul>
       <li><a href="index.html">首页</a></li>
	  <li><a  href="news.html">竞赛动态</a></li>
	  <li><a href="jsjs.html">竞赛介绍</a></li>
	  <li><a href="jszt.html">竞赛主题</a></li>
	  <li><a href="lc.html">竞赛流程</a></li>
	  <li><a  href="xbdw.html">竞赛流程</a></li>
	  <li> <a href="register.html">我要报名</a></li>
	  <li> <a href="contactus.html">联系我们</a></li>
	  <li> <a href="zsjs.html">知识竞赛</a></li>
	  


</ul>

</div>
<div class="content">
    <div class="titel_1">
  <p><span style="color:#a3a4a4">当前位置：<a  href="index.html" style="color:#a3a4a4; text-decoration:none;">首页  ></a></span><a  href="register.html"style="color:#5cabe1; text-decoration:none;">个人主页</a></p>
  </div>
  <div class="content_1">
       <div class="name">
	      <ul>
		        <li><img src="img/img-2.jpg"/></li>
				 <li style="padding-top:20px;">刘伟
				      欢迎回来！
				 
				 </li>
		  
		  </ul>  
		  
	   
	   </div>
	   <div class="img_1">
		         <ul>
			     <li>202</li>
				 <li>上传资源</li>
			 </ul>
			 <ul>
			      <li>402</li>
				  <li>下载资源</li>
			 
			 </ul>
			 <ul>
			      <li>10</li>
				  <li>发布文章</li>
			 
			 </ul>
		  
    </div>
	   
	   
	   <div class="menu">
	       <ul>
		       <li><a href="">发布文章</a></li>
			   <li><a href="">上传资源</a></li>
			   <li><a href="">下载资源</a></li>
			   
		   
		   
		   </ul>
	   </div>    
  
  
  </div>
 




  <div class="bg">
  <div style="padding-left:15px; background-color:#f6f6f6;margin-bottom:5px;" ><h2 style="color: #067fc4; height:35px; padding-top:5px;">发布文章</h2></div>
    <form id="myform" name="myform" method="post" action="<%=basePath%>/updateNews.action" enctype="multipart/form-data">
	 <table  width="641" style=" margin:0;">
	        <tr style="margin-bottom:5px;">
			    <td>文章标题</td>
				<td><input id="title" name="title" type="text" style=" width:560px;"/></td>
			</tr>
			 <tr>
			    <td>文章内容</td>
				<td><textarea id="editor1" name="content" style="width:410px; height:200px;" ><s:property value='#request.article.content' escape='false'/></textarea>
					<script type="text/javascript">//<![CDATA[
					CKEDITOR.replace('editor1', {"skin":"office2003",width:10,height:410});
	
					//]]></script>
                </p></td>
			</tr>
	 
	 
	 </table>
     <input name="id" type="hidden" value="<s:property value='#request.article.id' escape='false'/>" />  
  </form>
           
  
<div class="button"><ul>
		       <li><a href="javascript:postForm('myform');"><input type="button" value="提交" style="width:60px; height:25px;"/></a></li>
			   <li><a href=""><input type="button" value="取消"style="width:60px;height:25px;"/></a></li>
			   
		   
		   </ul></div>
</div>
     

</div>


<div class="footer"><p style="padding-top:15px;">版权所有：国家科技基础条件平台中心 | 京ICP备09051888号</p></div>


</body>
</html>
