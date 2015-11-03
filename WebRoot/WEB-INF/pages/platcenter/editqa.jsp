<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
	<script type="text/javascript" src="<%=basePath%>index/include/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="<%=basePath%>index/include/kindeditor/kindeditor.js"></script>
	<script type="text/javascript">
	function postForm(frmname){

		var postForm = document.forms[frmname];
		
		postForm.method = 'POST';
		
		postForm.submit();
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
		alert("文章标题不能为空");
		document.getElementById("title").focus();
		return false;
	}else if(t_value.length > 30){
		alert("文章标题请勿超过30个字");
		document.getElementById("title").focus();
		return false;
	}
	
	
	if(editor.isEmpty()){
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
  	<div class="mainbox">
          
             <form id="myform" name="myform" method="post" action="<%=basePath%>platcenter/platcenter_updateqa.action" enctype="multipart/form-data">
	 <table  width="641" style=" margin:0;">
	        <tr style="margin-bottom:5px;">
			    <td>Q:</td>
				<td><s:property value='#request.qa.question' escape='false'/></td>
			</tr>
			 <tr>
			    <td>A:</td>
				<td><textarea id="editor1" name="answer" style="width:410px; height:200px;" ><s:property value='#request.qa.answer' escape='false'/></textarea>
					
				
                </p></td>
			</tr>
	 
	 </table>
     <input name="id" type="hidden" value="<s:property value='#request.qa.id'/>" /> 
  </form>
           
  
<div class="button"><ul>
		       <li><a href="javascript:postForm('myform');"><input type="button" value="提交" style="width:60px; height:25px;"/></a></li>
			   <li><a href=""><input type="button" value="取消"style="width:60px;height:25px;"/></a></li>
			   
		   
		   </ul></div>
    
    
  	</div>
  </body>
</html>
