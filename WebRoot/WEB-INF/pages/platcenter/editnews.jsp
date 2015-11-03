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

	if(Validata()){
		var postForm = document.forms[frmname];
		
		postForm.method = 'POST';
		document.getElementById("editor1").value = editor.html();
		
		postForm.submit();
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
          
             <form id="myform" name="myform" method="post" action="<%=basePath%>platcenter/platcenter_updatenews.action" enctype="multipart/form-data">
	 <table  width="641" style=" margin:0;">
	        <tr style="margin-bottom:5px;">
			    <td>文章标题</td>
				<td><input id="title" name="title" type="text" style=" width:560px;" value="<s:property value='#request.news.title' escape='false'/>"/></td>
			</tr>
			 <tr>
			    <td>文章内容</td>
				<td><textarea id="editor1" name="content" style="width:410px; height:200px;" ><s:property value='#request.news.content' escape='false'/></textarea>
					<script>
		var editor;
		KindEditor.ready(function(K) {
			editor = K.create('textarea[name="content"]', {
				id : 'editor1',
				allowFileManager : true,
				autoHeightMode : true,
				afterCreate : function() {
					this.loadPlugin('autoheight');
				},
				urlType : 'absolute',
				langType : 'zh_CN',
				allowUpload : true,
				uploadJson : '<%=basePath%>ckeditorUpload.action'
			});
		});
</script>
				
                </p></td>
			</tr>
	  <p class="singularity"><span class="l_tag">文章分类：</span>
                  <input type="radio" name="type" value="1" <c:if test="${news.type == '1'}">checked</c:if>/>
                 	 新闻
                  <input type="radio" name="type" value="2" <c:if test="${news.type == '2'}">checked</c:if>/>
                 	 通知
                  <input type="radio" name="type" value="3" <c:if test="${news.type == '3'}">checked</c:if>/>
                 	 往届                  
                 </p>
                 <s:if test="#request.article.IType!=null">
	                 <script>
	                 	var type = "<s:property value='#request.news.type' escape='false'/>";
	                 	var radio_science = document.getElementsByName("type");
	                 	for(var i=0;i<radio_science.length;i++){
	                 		if(radio_science[i].value==type)
	                 			radio_science[i].checked=true;
	                 	}
	                 </script>
                 </s:if>
	 
	 </table>
     <input name="id" type="hidden" value="<s:property value='#request.news.id'/>" /> 
  </form>
           
  
<div class="button"><ul>
		       <li><a href="javascript:postForm('myform');"><input type="button" value="提交" style="width:60px; height:25px;"/></a></li>
			   <li><a href=""><input type="button" value="取消"style="width:60px;height:25px;"/></a></li>
			   
		   
		   </ul></div>
    
    
  	</div>
  </body>
</html>
