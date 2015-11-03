<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发表新文章-科技空间</title>
<link href="<%=basePath%>/css/space.css" type=text/css rel=stylesheet />
<link href="<%=basePath%>/css/space_main.css" type=text/css rel=stylesheet />
<script src="<%=basePath%>/js/pop.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath%>/space/ckeditor/ckeditor.js"></script>
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
<div id="main">
  <div id="content">
      <div class="con_4_1">
        <div class="con_t_1">
          <div class="t4_3">
            <h2 class="h2_1">发表新文章</h2>
            <div class="con_c">
              <div class="import">
              <s:if test="#request.uri!=null">
              <form id="myform" name="myform" method="post" action="<s:property value='#request.uri' escape='false'/>" enctype="multipart/form-data">
              </s:if>
              <s:else>
              <form id="myform" name="myform" method="post" action="addarticle.action" enctype="multipart/form-data">
              </s:else>
                <p><span class="l_tag">文章标题：</span>
                  <input id="title" name="title" type="text" style="width:310px" value="<s:property value='#request.article.title' escape='false'/>" />
                </p>
                <!--<p id="chk_title" class="hint"></p>-->
                <p><span class="l_tag">文章内容：</span>
					<textarea id="editor1" name="content" style="width:410px; height:200px;" ><s:property value='#request.article.content' escape='false'/></textarea>
					<script type="text/javascript">//<![CDATA[
					CKEDITOR.replace('editor1', {"skin":"office2003",width:10,height:410});				
					//]]></script>
                </p>


                 
                  	<!--  <p class="singularity"><span class="l_tag">文章发布到外网：</span>
                  <input type="radio" name="science1" value="0"  onClick="data1.className='singularity',this.value=''"/>
                  是
                  <input type="radio" name="science1" value="1" checked="checked" onClick="data1.className='singularity_none'"/>
                  否</p>
                  <div class="singularity_none" id="data1"> <span style="width:100px;float:left; line-height:2em;">
                  <input name="outweb" type="checkbox" value="1" />
                  通知通告</span> <span style="width:150px;float:left; line-height:2em;">
                  <input name="outweb" type="checkbox" value="2" />
                  需求发布与反馈</span> <span style="width:120px;float:left; line-height:2em;">
                  <input name="outweb" type="checkbox" value="3" />
                  项目动态</span> <span style="width:120px;float:left; line-height:2em;">
                  <input name="outweb" type="checkbox" value="4" />
                  经验交流</span> </div>-->
                  <script language="JavaScript">

		/*

		根据对象当前的属性，改变对象的显示状态

		*/

		function onClickDiv2(DivId)

		{

		if(document.getElementById(DivId).style.display=='none')

		   { document.getElementById(DivId).style.display=''; }

		   else

		   { document.getElementById(DivId).style.display='none'; }

		   return 0;

		}

	  </script>
                  	
                  </div>
                  <input name="id" type="hidden" value="<s:property value='#request.article.id' escape='false'/>" />
                  </form>
                <p class="button1" style="padding-left:95px"> 
                <s:if test="#request.uri!=null">
	              <a href="javascript:postForm('myform');">修 改</a> 
	            </s:if>
	            <s:else>
	              <a href="javascript:postForm('myform');">发 表</a> 
	            </s:else>
                <a href="#">取 消</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
  <div id="footer">
    <ul>
      <li><a href="#">关于我们</a></li>
      <li><a href="#">联系我们</a></li>
      <li><a href="#">帮助中心</a></li>
      <li><a href="#">网站声明</a></li>
    </ul>
    <p>copyright 2008-2009 xxxxxx.com.lnc. 京ICP证827361</p>
  </div>
</div>
<div class="sample_popup" id="popup5" style="z-index: +1; width:360px; float:left; display:none;">
  <div class="sample_popup_5" style="width:360px; height:244px; float:left;">
  <h2 id="popup_drag5" style="position:absolute; width: 345px; left: -5px; top:5px;"><span id="popup_exit5" style=" float:right; cursor: pointer; font-size:12px; font-weight:bold; color:#FFFFFF;">&times;</span></h2>
  <iframe name="iframe_parent" id="iframe_parent" src="<%=basePath%>/layer/article_suc.html" scrolling="no" height="244px" width="360px" frameborder="0" style="margin:0px; padding:0px;"></iframe>
  </div>
  </div>
  
<div class="sample_popup" id="popup2" style="z-index: +1; width:360px; float:left; display:none;">
  <div class="sample_popup_2" style="width:360px; height:244px; float:left;">
  <h2 id="popup_drag2" style="position:absolute; width: 345px; left: -5px; top:5px;"><span id="popup_exit2" style=" float:right; cursor: pointer; font-size:12px; font-weight:bold; color:#FFFFFF;">&times;</span></h2>
  <iframe name="iframe_parent" id="iframe_parent" src="<%=basePath%>/layer/edit.html" scrolling="no" height="244px" width="360px" frameborder="0" style="margin:0px; padding:0px;"></iframe>
  </div>
  </div>
</body>
</html>
