<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>
<html>
<HEAD>
<TITLE>报名注册―第三届大学生科技资源共享与服务创新实践竞赛</TITLE>
<%@ include file="../include/head.jsp"%>
<LINK href="<%=basePath%>style/css/css.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="<%=basePath%>js/jquery-1.9.1.min.js"></script> 

<script type="text/javascript" src="<%=basePath%>js/link.js"></script>
<script type="text/javascript" src="<%=basePath%>js/reg.js"></script>
<script type="text/javascript" src="<%=basePath%>js/layer/layer.min.js"></script>
<script src="<%=basePath%>js/school.js" type="text/javascript"></script>

<script src="<%=basePath%>js/regtip.js" type="text/javascript"></script>
<script src="<%=basePath%>js/common.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function(){
		$('#username').blur(function(){
			var uname = $(this).val();
			if(uname){
				$('#loading-img').show();
				$.ajax({
					type:"post", 
					url:'regionAjax', 
					data:"username=" + uname,
					dataType:'json',
					success:function (data) {
						var message = eval("(" + data + ")");
						if (message[0].tip != "") {
							layer.alert(message[0].tip, 7, !1);
						}
						$('#loading-img').hide();
					},
					cache:false
				});
			}	
		});
		$('.select-school').click(function(){
			pop($(this));
		});
	});
</script>

  <script type="text/javascript">
	//弹出窗口
	function pop(obj){
		//将窗口居中
		makeCenter();

		//初始化省份列表
		initProvince(obj);

		//默认情况下, 给第一个省份添加choosen样式
		$('[province-id="1"]').addClass('choosen');

		//初始化大学列表
		initSchool(1, obj);
	}
	//隐藏窗口
	function hide()
	{
		$('#choose-box-wrapper').css("display","none");
	}

	function initProvince(obj)
	{
		//原先的省份列表清空
		$('#choose-a-province').html('');
		for(i=0;i<schoolList.length;i++)
		{
			$('#choose-a-province').append('<a class="province-item" province-id="'+schoolList[i].id+'">'+schoolList[i].name+'</a>');
		}
		//添加省份列表项的click事件
		$('.province-item').bind('click', function(){
				var item=$(this);
				var province = item.attr('province-id');
				var choosenItem = item.parent().find('.choosen');
				if(choosenItem)
					$(choosenItem).removeClass('choosen');
				item.addClass('choosen');
				//更新大学列表
				initSchool(province, obj);
			}
		);
	}

	function initSchool(provinceID, obj)
	{
		//原先的学校列表清空
		$('#choose-a-school').html('');
		var schools = schoolList[provinceID-1].school;
		for(i=0;i<schools.length;i++)
		{
			$('#choose-a-school').append('<a class="school-item" school-id="'+schools[i].id+'">'+schools[i].name+'</a>');
		}
		//添加大学列表项的click事件
		$('.school-item').bind('click', function(){
				var item=$(this);
				var school = item.attr('school-id');
				//更新选择大学文本框中的值
				obj.val(item.text());
				//关闭弹窗
				hide();
			}
		);
	}

	function makeCenter()
	{
		$('#choose-box-wrapper').css("display","block");
		$('#choose-box-wrapper').css("position","absolute");
		$('#choose-box-wrapper').css("top", Math.max(0, (($(window).height() - $('#choose-box-wrapper').outerHeight()) / 2) + $(window).scrollTop()) + "px");
		$('#choose-box-wrapper').css("left", Math.max(0, (($(window).width() - $('#choose-box-wrapper').outerWidth()) / 2) + $(window).scrollLeft()) + "px");
	}
function changeItem(index,path)
{
   if(index==1){
   		document.getElementById('methodsel').value = 'group';
   }else{
   		document.getElementById('methodsel').value = 'person';
   }
  
   document.getElementById('myformsel').submit();
}
  </script>

<style type="text/css">
	.p-l-178 {
		margin-left: 178px;
	}
	#loading-img{
		display:none;
	}
</style>
  <style type="text/css">
	#choose-box-wrapper{
		width: 652px;
		background-color:#000;
		filter:alpha(opacity=100);
		background-color: rgba(0, 0, 0, 0.5);
		padding:10px;
		border-radius:5px;
		display:none;
	}
	#choose-box{
		border: 1px solid #005EAC;
		width:650px;
		background-color:white;
	}
	#choose-box-title{
		background:#3777BC;
		color: white;
		padding: 4px 10px 5px;
		font-size: 14px;
		font-weight: 700;
		margin: 0;
	}
	#choose-box-title span{
		font-family: Tahoma, Verdana, STHeiTi, simsun, sans-serif;
	}

	#choose-a-province, #choose-a-school{
		margin:5px 8px 10px 8px;
		border: 1px solid #C3C3C3;
	}
	#choose-a-province a{
		display:inline-block;
		height: 18px;
		line-height: 18px;
		color:#005EAC;
		text-decoration: none;
		font-size: 9pt;
		font-family: Tahoma, Verdana, STHeiTi, simsun, sans-serif;
		margin:2px 5px;
		padding: 1px;
		text-align: center;
	}
	#choose-a-province a:hover{
		text-decoration:underline;
		cursor:pointer;
	}
	#choose-a-province .choosen{
		background-color: #005EAC;
		color:white;
	}
	
	#choose-a-school{
		overflow-x: hidden;
		overflow-y: auto;
		height: 200px;
	}
	#choose-a-school a{
		height: 18px;
		line-height: 18px;
		color:#005EAC;
		text-decoration: none;
		font-size: 9pt;
		font-family: Tahoma, Verdana, STHeiTi, simsun, sans-serif;
		float: left;
		width: 160px;
		margin: 4px 12px;
		padding-left:10px;
		background:url(<%=basePath %>img/2012072500060712.gif) no-repeat 0 9px;
	}
	#choose-a-school a:hover{
		background-color:#005EAC;
		color:white;
		cursor:pointer;
	}
	
	#choose-box-bottom{
		background: #F0F5F8;
		padding: 8px;
		text-align: right;
		border-top: 1px solid #CCC;
		height:40px;
	}
	#choose-box-bottom input{
		vertical-align: middle;
		text-align: center;
		background-color:#005EAC;
		color:white;
		border-top: 1px solid #B8D4E8;
		border-left: 1px solid #B8D4E8;
		border-right: 1px solid #114680;
		border-bottom: 1px solid #114680;
		cursor: pointer;
		width: 60px;
		height: 25px;
		margin-top: 6px;
		margin-right: 6px;
	}
  </style>

</HEAD>
<BODY>
 <jsp:include page="/index/head.jsp" flush="true"></jsp:include>

<form action="<%=basePath %>region_selType.action" method="post" id="myformsel" name="myformsel">
<input name="method" id="methodsel" value="${method}" type="hidden"/>
</form>

<div class="clear"></div>
      <div class="wrap">
  <div id="regbox">
  <form action="<%=basePath %>region.action" method="post" id="myform" name="myform" accept-charset="utf-8">
  	<input type="hidden" id="flag" />
  	<input name="method" id="method" value="${method}" type="hidden"/>
	<div id="reg_nr"><div id="reg_top"><span class="reg_txt">报名注册</span> （带<span class="star">*</span>号为必填项） </div><div id="zclc"></div>
	<div id="zclc_nr">
	<div id="reg_nr_z">	
	<div class="reg_lm_xx_td p-l-178">基本信息</div>
	<div class="p-l-178"> 
		<table border="0" width="400" cellspacing="0" cellpadding="0" class="reg_h">
	<tr>
		<td width="100" class="reg_h">用 户 名：<span class="star">*</span></td>
		<td>
			<input class="reg_wbk username_unq reg_field"  type="text" value="<s:property value="header.username"/>" name="header.username" id="username" title="请输入6-12位字符，必须以字母开头，可以包含数字、下划线和点">
			<img src="<%=basePath %>img/loading.gif" id="loading-img">
		</td>
		<td id="usernametd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">密&nbsp;&nbsp;&nbsp;码：<span class="star">*</span></td>
		<td><input class="reg_wbk" type="password" value="<s:property value="header.password"/>" name="header.password" id="psw"  title="请输入6-12位字符，必须以字母开头，可以包含数字、下划线和点" ></td>
		<td id="pswtd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">确认密码：<span class="star">*</span></td>
		<td><input class="reg_wbk" type="password" name="header.password2" value="<s:property value="header.password2"/>" id="psw2" title="请重复输入相同密码"></td>
		<td id="psw2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">密码问题：<span class="star">*</span></td>
		<td>
		<select name="header.question" id="question" class="select">
		    <option <s:if test="%{header.question=='母亲的出生地'}">selected</s:if> value="母亲的出生地">母亲的出生地</option>
            <option <s:if test="%{header.question=='父亲的出生地'}">selected</s:if> value="父亲的出生地">父亲的出生地</option>
            <option <s:if test="%{header.question=='您的生日'}">selected</s:if> value="您的生日">您的生日</option>
            <option <s:if test="%{header.question=='您的出生地'}">selected</s:if> value="您的出生地">您的出生地</option>
            <option <s:if test="%{header.question=='您最喜欢的动物'}">selected</s:if> value="您最喜欢的动物">您最喜欢的动物</option>
       </select>
       </td>
	</tr>
	<tr>
		<td class="reg_h">答案：<span class="star">*</span></td>
		<td><input class="reg_wbk" type="text" name="header.answer" value="<s:property value="header.answer"/>" id="answer" title="请输入3-5位字符的答案，密码提示问题的答案是为了找回密码，请牢记！"></td>
		 <td id="answertd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	</table>
</div>
<!-- 
<div class="xuanze"><a href="javascript:void(0);" style="text-decoration: none;" class="xuanze_txt">选择参赛方式&gt;&gt;</a></div>
 -->
 	
 	<div style="width:100%; padding:8px;"></div>
 
  <div id=page1 class="p-l-178">
 <label> <input name="regionType" type="radio" value="1"  <s:if test="%{#request.method=='group'}"> checked="checked" </s:if> onClick="return changeItem(1,'<%=basePath %>');"> <span class="tuandui">团队</span></label>&nbsp;&nbsp;&nbsp;
  <label><input name="regionType" type="radio" value="2"  <s:if test="%{#request.method=='person'}"> checked="checked" </s:if> onClick="return changeItem(2,'<%=basePath %>');"> <span class="geren">个人</span></label>  
 <!-- 团体 -->
 <s:if test="%{#request.method=='group'}">
  <div id="Div0"> 
    <div class="reg_lm_td" style="display:none;">您选择的是团队报名</div>
	 <div class="reg_lm_xx_td">组长信息</div>
	 <div><table border="0" width="100%" cellspacing="0" cellpadding="0" class="reg_h">
	<tr>
		<td width="100" class="reg_h">组长邮箱：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.email" id="email" type="text" title="请输入您的电子邮箱地址"></td>
		<td id="emailtd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">组长姓名：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.name" id="name"></td>
		<td id="nametd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在省份：<span class="star">*</span></td>
		<td><select name="header.province"  class="select">
			<option value="北京市">北京市</option>
			<option value="天津市">天津市</option>
			<option value="上海市">上海市</option>
			<option value="重庆市">重庆市</option>
			<option value="河北省">河北省</option>
			<option value="山西省">山西省</option>
			<option value="台湾省">台湾省</option>
			<option value="'辽宁省">辽宁省</option>
			<option value="吉林省">吉林省</option>
			<option value="黑龙江省">黑龙江省</option>
			<option value="江苏省">江苏省</option>
			<option value="浙江省">浙江省</option>
			<option value="安徽省">安徽省</option>
			<option value="福建省">福建省</option>
			<option value="江西省">江西省</option>
			<option value="山东省">山东省</option>
			<option value="河南省">河南省</option>
			<option value="湖北省">湖北省</option>
			<option value="湖南省">湖南省</option>
			<option value="广东省">广东省</option>
			<option value="甘肃省">甘肃省</option>
			<option value="四川省">四川省</option>
			<option value="贵州省">贵州省</option>
			<option value="海南省">海南省</option>
			<option value="云南省">云南省</option>
			<option value="青海省">青海省</option>
			<option value="陕西省">陕西省</option>
			<option value="广西壮族自治区">广西壮族自治区</option>
			<option value="西藏自治区">西藏自治区</option>
			<option value="宁夏回族自治区">宁夏回族自治区</option>
			<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
			<option value="内蒙古自治区">内蒙古自治区</option>
			<option value="澳门特别行政区">澳门特别行政区</option>
			<option value="香港特别行政区">香港特别行政区</option>
            </select>
         </td>
	</tr>	
	<tr>
		<td class="reg_h">所在学校：<span class="star">*</span></td>
		<td><div id="demo"> 
<label for="tagsbox"><input type="text" value="" name="header.school" id="school" class="tagsbox select-school" data-count="10" /></label> 
<!-- 
<div id="dropbox"> 
<p><a href="javascript:void(0)">北京大学</a><a href="javascript:void(0)">清华大学</a><a href="javascript:void(0)">中国人民大学</a><br><a href="javascript:void(0)">中国农业大学</a><a href="javascript:void(0)">北京师范大学</a><br><a href="javascript:void(0)">北京航空航天大学</a><a href="javascript:void(0)">北京理工大学</a> <em class="close" title="关闭">关闭</em> </p> 
</div> 
 -->
<br style="clear:both" /> 
</div> </td>

    </tr>
	<tr>
		<td class="reg_h">所在院系：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.faculty" id="yuanxi"></td>
		<td id="yuanxitd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在年级：<span class="star">*</span></td>
		<td><select name="header.classes"  class="select">
		    <option value="本科在读">本科在读</option>
            <option value="硕士在读">硕士在读</option>
            <option value="博士在读">博士在读</option>
            </select></td>
	</tr>
	<tr>
		<td class="reg_h">所属专业：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.major" id="major"></td>
		<td id="majortd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">学生证号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.code" id="code"  title="为了保证信息真实有效，请正确填写学生证号码"></td>
		<td id="codetd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">手机号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.phone" id="phone"  title="请正确输入您的手机号码，以便直接与您本人取得联系"></td>
		<td id="phonetd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">联系地址：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.addr" id="addr" ></td>
		<td id="addrtd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
</table></div>
<div class="reg_lm_xx_td">成员信息</div>
<div ><table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td width="100" class="reg_h">成员一姓名：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player1.name" id="name1"></td>
		<td id="name1td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在学校：<span class="star">*</span></td>
		<td><div id="demo1">
		<label for="tagsbox1"><input class="tagsbox1 select-school" style="color: #333;border: 1px solid #ccc;height:30px;width:250px;line-height: 30px;background-color: #f6f6f6;text-align: left;text-indent: 6px;font-size:14px;" data-count="10" name="player1.school"></label>
			<!-- 
		<div id="dropbox1"> 
<p><a href="javascript:void(0)">北京大学</a><a href="javascript:void(0)">清华大学</a><a href="javascript:void(0)">中国人民大学</a><br><a href="javascript:void(0)">中国农业大学</a><a href="javascript:void(0)">北京师范大学</a><br><a href="javascript:void(0)">北京航空航天大学</a><a href="javascript:void(0)">北京理工大学</a> <em class="close" title="关闭">关闭</em> </p> 
</div> 
 -->
		<br style="clear:both" /> 
		</div>
		</td>
			
	</tr>
	<tr>
		<td class="reg_h">所在院系：<span class="star">*</span></td>
		<td><input class="reg_wbk "  name="player1.faculty" id="yuanxi1"></td>
		<td id="yuanxi1td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在年级：<span class="star">*</span></td>
		<td><select name="player1.classes" class="select">
             <option value="本科在读">本科在读</option>
             <option value="硕士在读">硕士在读</option>
             <option value="博士在读">博士在读</option>
             </select></td>
	</tr>
	<tr>
		<td class="reg_h">所属专业：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player1.major" id="major1"></td>
		<td id="major1td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">学生证号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player1.code" id="code1"  title="为了保证信息真实有效，请正确填写学生证号码"></td>
		<td id="code1td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h"></td>
		<td><input class="newadd" value="+ 新增成员二" type="button"  onClick="expandit('2'); return false"></td>
	</tr>
	</table></div>
	<div id="page2" style="display:none">
	<div ><table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td width="100" class="reg_h">成员二姓名：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player2.name" id="name2"></td>
		<td id="name2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在学校：<span class="star">*</span></td>
		<td><div id="demo2">
		<label for="tagsbox2">
			<input class="tagsbox2 select-school"  style="color: #333;border: 1px solid #ccc;height:30px;width:250px;line-height: 30px;background-color: #f6f6f6;text-align: left;text-indent: 6px;font-size:14px;" data-count="10" name="player2.school">
		</label>
		
<br style="clear:both" /> 
			</div>
		</td>
	</tr>
	<tr>
		<td class="reg_h">所在院系：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player2.faculty" id="yuanxi2"></td>
		<td id="yuanxi2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在年级：<span class="star">*</span></td>
		<td><select name="player2.classes" class="select">
                                              <option value="本科在读">本科在读</option>
                                              <option value="硕士在读">硕士在读</option>
                                              <option value="博士在读">博士在读</option>
                                              </select></td>
	</tr>
	<tr>
		<td class="reg_h">所属专业：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player2.major" id="major2"></td>
		<td id="major2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">学生证号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player2.code" id="code2" title="为了保证信息真实有效，请正确填写学生证号码"></td>
		<td id="code2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h"></td>
		<td><input class="newadd" value="+ 新增成员三" type="button"  onClick="expandit('3'); return false"></td>
	</tr>	
	</table></div>
	
	</div>
	
	
	<div id="page3" style="display:none">
	<div ><table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td width="100" class="reg_h">成员三姓名：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player3.name" id="name2"></td>
		<td id="name2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在学校：<span class="star">*</span></td>
		<td><div id="demo2">
		<label for="tagsbox2">
			<input class="tagsbox2 select-school"  style="color: #333;border: 1px solid #ccc;height:30px;width:250px;line-height: 30px;background-color: #f6f6f6;text-align: left;text-indent: 6px;font-size:14px;" data-count="10" name="player3.school">
		</label>
		<!-- 
		<div id="dropbox2"> 
<p><a href="javascript:void(0)">北京大学</a><a href="javascript:void(0)">清华大学</a><a href="javascript:void(0)">中国人民大学</a><br><a href="javascript:void(0)">中国农业大学</a><a href="javascript:void(0)">北京师范大学</a><br><a href="javascript:void(0)">北京航空航天大学</a><a href="javascript:void(0)">北京理工大学</a> <em class="close" title="关闭">关闭</em> </p> 
</div> 	
 -->
<br style="clear:both" /> 
			</div>
		</td>
	</tr>
	<tr>
		<td class="reg_h">所在院系：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player3.faculty" id="yuanxi2"></td>
		<td id="yuanxi2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在年级：<span class="star">*</span></td>
		<td><select name="player3.classes" class="select">
                                              <option value="本科在读">本科在读</option>
                                              <option value="硕士在读">硕士在读</option>
                                              <option value="博士在读">博士在读</option>
                                              </select></td>
	</tr>
	<tr>
		<td class="reg_h">所属专业：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player3.major" id="major2"></td>
		<td id="major2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">学生证号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player3.code" id="code2" title="为了保证信息真实有效，请正确填写学生证号码"></td>
		<td id="code2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h"></td>
		<td><input class="newadd" value="+ 新增成员四" type="button"  onClick="expandit('4'); return false"></td>
	</tr>		
	</table></div>
	
	</div>	
	

	<div id="page4" style="display:none">
	<div ><table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td width="100" class="reg_h">成员四姓名：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player4.name" id="name2"></td>
		<td id="name2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在学校：<span class="star">*</span></td>
		<td><div id="demo2">
		<label for="tagsbox2">
			<input class="tagsbox2 select-school"  style="color: #333;border: 1px solid #ccc;height:30px;width:250px;line-height: 30px;background-color: #f6f6f6;text-align: left;text-indent: 6px;font-size:14px;" data-count="10" name="player4.school">
		</label>
		<!-- 
		<div id="dropbox2"> 
<p><a href="javascript:void(0)">北京大学</a><a href="javascript:void(0)">清华大学</a><a href="javascript:void(0)">中国人民大学</a><br><a href="javascript:void(0)">中国农业大学</a><a href="javascript:void(0)">北京师范大学</a><br><a href="javascript:void(0)">北京航空航天大学</a><a href="javascript:void(0)">北京理工大学</a> <em class="close" title="关闭">关闭</em> </p> 
</div> 	
 -->
<br style="clear:both" /> 
			</div>
		</td>
	</tr>
	<tr>
		<td class="reg_h">所在院系：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player4.faculty" id="yuanxi2"></td>
		<td id="yuanxi2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在年级：<span class="star">*</span></td>
		<td><select name="player4.classes" class="select">
                                              <option value="本科在读">本科在读</option>
                                              <option value="硕士在读">硕士在读</option>
                                              <option value="博士在读">博士在读</option>
                                              </select></td>
	</tr>
	<tr>
		<td class="reg_h">所属专业：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player4.major" id="major2"></td>
		<td id="major2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">学生证号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player4.code" id="code2" title="为了保证信息真实有效，请正确填写学生证号码"></td>
		<td id="code2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h"></td>
		<td><input class="newadd" value="+ 新增成员五" type="button"  onClick="expandit('5'); return false"></td>
	</tr>		
	</table></div>
	
	</div>	


	<div id="page5" style="display:none">
	<div ><table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td width="100" class="reg_h">成员四姓名：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player5.name" id="name2"></td>
		<td id="name2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在学校：<span class="star">*</span></td>
		<td><div id="demo2">
		<label for="tagsbox2">
			<input class="tagsbox2 select-school"  style="color: #333;border: 1px solid #ccc;height:30px;width:250px;line-height: 30px;background-color: #f6f6f6;text-align: left;text-indent: 6px;font-size:14px;" data-count="10" name="player5.school">
		</label>
		<!-- 
		<div id="dropbox2"> 
<p><a href="javascript:void(0)">北京大学</a><a href="javascript:void(0)">清华大学</a><a href="javascript:void(0)">中国人民大学</a><br><a href="javascript:void(0)">中国农业大学</a><a href="javascript:void(0)">北京师范大学</a><br><a href="javascript:void(0)">北京航空航天大学</a><a href="javascript:void(0)">北京理工大学</a> <em class="close" title="关闭">关闭</em> </p> 
</div> 	
 -->
<br style="clear:both" /> 
			</div>
		</td>
	</tr>
	<tr>
		<td class="reg_h">所在院系：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player5.faculty" id="yuanxi2"></td>
		<td id="yuanxi2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在年级：<span class="star">*</span></td>
		<td><select name="player5.classes" class="select">
                                              <option value="本科在读">本科在读</option>
                                              <option value="硕士在读">硕士在读</option>
                                              <option value="博士在读">博士在读</option>
                                              </select></td>
	</tr>
	<tr>
		<td class="reg_h">所属专业：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player5.major" id="major2"></td>
		<td id="major2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">学生证号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="player5.code" id="code2" title="为了保证信息真实有效，请正确填写学生证号码"></td>
		<td id="code2td" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	</table></div>
	
	</div>	




	
	
	
	
  </div>
   <!-- 团体 -->
  </s:if>
   <!-- 个人 -->
  <s:if test="%{#request.method=='person'}">
  <div id="Div1">
  <div class="reg_lm_gr" style="display: none;">您选择的是个人报名</div> 	
  <div class="reg_lm_xx_gr">详细信息</div>
	 <div><table border="0" width="100%" cellspacing="0" cellpadding="0" class="reg_h">
	<tr>
		<td width="100" class="reg_h">电子邮箱：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.email" id="email" type="text" title="请输入您的电子邮箱地址"></td>
		<td id="emailtd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">姓&nbsp;&nbsp;&nbsp;名：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.name" id="name"></td>
		<td id="nametd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在省份：<span class="star">*</span></td>
		<td><select name="header.province"  class="select">
			<option value="北京市">北京市</option>
			<option value="天津市">天津市</option>
			<option value="上海市">上海市</option>
			<option value="重庆市">重庆市</option>
			<option value="河北省">河北省</option>
			<option value="山西省">山西省</option>
			<option value="台湾省">台湾省</option>
			<option value="'辽宁省">辽宁省</option>
			<option value="吉林省">吉林省</option>
			<option value="黑龙江省">黑龙江省</option>
			<option value="江苏省">江苏省</option>
			<option value="浙江省">浙江省</option>
			<option value="安徽省">安徽省</option>
			<option value="福建省">福建省</option>
			<option value="江西省">江西省</option>
			<option value="山东省">山东省</option>
			<option value="河南省">河南省</option>
			<option value="湖北省">湖北省</option>
			<option value="湖南省">湖南省</option>
			<option value="广东省">广东省</option>
			<option value="甘肃省">甘肃省</option>
			<option value="四川省">四川省</option>
			<option value="贵州省">贵州省</option>
			<option value="海南省">海南省</option>
			<option value="云南省">云南省</option>
			<option value="青海省">青海省</option>
			<option value="陕西省">陕西省</option>
			<option value="广西壮族自治区">广西壮族自治区</option>
			<option value="西藏自治区">西藏自治区</option>
			<option value="宁夏回族自治区">宁夏回族自治区</option>
			<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
			<option value="内蒙古自治区">内蒙古自治区</option>
			<option value="澳门特别行政区">澳门特别行政区</option>
			<option value="香港特别行政区">香港特别行政区</option>
            </select>
         </td>
	</tr>		
	<tr>
		<td class="reg_h">所在学校：<span class="star">*</span></td>
		<td><div id="demo"> 
<label for="tagsbox"><input type="text" value="" name="header.school" id="school" class="tagsbox select-school" data-count="10" /></label> 
<!-- 
<div id="dropbox"> 
<p><a href="javascript:void(0)">北京大学</a><a href="javascript:void(0)">清华大学</a><a href="javascript:void(0)">中国人民大学</a><br><a href="javascript:void(0)">中国农业大学</a><a href="javascript:void(0)">北京师范大学</a><br><a href="javascript:void(0)">北京航空航天大学</a><a href="javascript:void(0)">北京理工大学</a> <em class="close" title="关闭">关闭</em> </p> 
</div> 
 -->
<br style="clear:both" /> 
</div> </td>
    </tr>
	<tr>
		<td class="reg_h">所在院系：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.faculty" id="yuanxi"></td>
		<td id="yuanxitd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">所在年级：<span class="star">*</span></td>
		<td><select name="header.classes"  class="select">
		    <option value="本科在读">本科在读</option>
            <option value="硕士在读">硕士在读</option>
            <option value="博士在读">博士在读</option>
            </select></td>
	</tr>
	<tr>
		<td class="reg_h">所属专业：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.major" id="major"></td>
		<td id="majortd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">学生证号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.code" id="code"  title="为了保证信息真实有效，请正确填写学生证号码"></td>
		<td id="codetd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">手机号码：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.phone" id="phone"  title="请正确输入您的手机号码，以便直接与您本人取得联系"></td>
		<td id="phonetd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">联系地址：<span class="star">*</span></td>
		<td><input class="reg_wbk" name="header.addr" id="addr" ></td>
		<td id="addrtd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
</table></div>
  </div>
  <!-- 个人 -->
  </s:if>
  <div class="reg_lm_xx_gr" id="reg_lm_xx_gr">选填信息</div>
	<div id="reg_js"><table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td width="100" class="reg_h">指导教师姓名：</td>
		<td><input class="reg_wbk" name="teacher.name" id="tname"></td>
		<td id="tnametd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>		
	</tr>
	<tr>
		<td class="reg_h">所在学校：</td>
		<td><div id="demo3">
		<label for="tagsbox3">
		<input class="tagsbox3 select-school" style="color: #333;border: 1px solid #ccc;height:30px;width:250px;line-height: 30px;background-color: #f6f6f6;text-align: left;text-indent: 6px;font-size:14px;"  name="teacher.school">
		</label>
		<!-- 
		<div id="dropbox3"> 
<p><a href="javascript:void(0)">北京大学</a><a href="javascript:void(0)">清华大学</a><a href="javascript:void(0)">中国人民大学</a><br><a href="javascript:void(0)">中国农业大学</a><a href="javascript:void(0)">北京师范大学</a><br><a href="javascript:void(0)">北京航空航天大学</a><a href="javascript:void(0)">北京理工大学</a> <em class="close" title="关闭">关闭</em> </p> 
</div> 
		 -->
<br style="clear:both" /> 
		</div>
		</td>
	</tr>
	<tr>
		<td class="reg_h">所在专业：</td>
		<td><input class="reg_wbk" name="teacher.major" id="tmajor" ></td>
		<td id="tmajortd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">职&nbsp;&nbsp;&nbsp; 称：</td>
		<td><input class="reg_wbk" name="teacher.title" id="title"></td>
		<td id="titletd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	<tr>
		<td class="reg_h">手机号码：</td>
		<td><input class="reg_wbk" name="teacher.phone" id="tphone"></td>
		<td id="tphonetd" style="position:absolute;display:none;z-index:1000;height:30px;"></td>
	</tr>
	</table>
	</div>
  
  
</div>		  
<div class="reg_lm_xx_td p-l-178">共享协议</div>
<div align="center"><textarea name="v_content" id="v_content" class="fab" style="width:70%; height: 120px;">&nbsp;&nbsp;&nbsp;&nbsp;“共享杯”科技创新实践竞赛，国家科技基础条件平台中心主办，国家科技基础条件平台信息技术中心承办，竞赛面向中国高等院校在校青年学生，竞赛主办方鼓励青年学子积极参加这一全国性的大学生科技创新实践竞赛活动。
1.	参赛者必须是中国经教育部认可的大学（包括中科院等科研院所）的具有正式学籍的全日制在校学生或者教师。
2.	参赛者在此保证，将如实提供各项信息及资料。如参赛者提供虚假信息的，一经发现，将立即取消个人乃至整个团队的参赛资格。
3.	参赛者在此确认，自愿参加本项大赛，除由主办方事先明确同意提供的食宿或经费外，在大赛过程中所发生的各项费用由参赛者自行承担。
4.	在大赛过程中，参赛者将有可能获得用于竞赛的设备和信息资料（“竞赛设备资料”），该竞赛设备资料的所有权及相关知识产权归提供方及相关权利人所有。参赛者应当妥善保管竞赛设备资料，并且仅为本大赛之目的，合理、合法地进行使用。未经提供方许可，不得将竞赛设备资料转让或提供给任何第三方使用；如提供方要求返还竞赛设备资料，则参赛者应当及时如数归还。
5.	参赛者在此保证，对在大赛过程中所知悉的举办及协办方的各项信息负保密义务。
6.	参赛者应自觉遵守有关知识产权的相关法律法规，不得侵犯他人的知识产权或其他权益。参赛者声明并保证参赛者（包括签署本协议的所有人）（a）是参赛作品的唯一所有人；（b）参赛作品交付给本次大赛主委会时，未侵犯第三方的知识产权，以及（c）参赛作品在大赛及评审期间的任何时候，未曾被要约出售或者进行宣传出售。对于违反上述保证所造成的不良后果，本次大赛的主办、协办和主管单位均不负任何法律责任，由参赛者本人负责。
7.	本协议及任何关于其条款或规定或本次大赛的有效性、解释及履行的问题应受中华人民共和国法律（不包括其冲突法规则）管辖，并依其解决有关的争议和纠纷。</textarea>
</div>
<div class="reg_h p-l-178"><INPUT value=767 type=checkbox class="jz" onclick="if(this.checked){document.getElementById('zc_z').style.display='block'}else{document.getElementById('zc_z').style.display='none'}" name=Item_268>&nbsp; 已阅读&ldquo;共享杯&rdquo;保密协议</div>	
  </div>    
	<div class="zc_z" style="display: none" id="zc_z">
 <input name="button" type="button" class="zc" value="" style="cursor:pointer;" onclick="checkedVal();">
  </div><div id="regokbottom"></div>  
	
	</div>    	   
  </div>   
  </form>
	</div>
		 	 
</DIV>
<div class="clear"></div>
<jsp:include page="/index/foot.jsp" flush="true"></jsp:include>
<div id="tipDiv" style="position:absolute;z-index:1000;display:none;height:30px;" > 
<table width="100%" border="0" cellpadding="5" cellspacing="0"> 
<tr > 
<td width="100%" height="25" >&quot;<div id="taemTip" class="focus"></div></td> 
</tr> 
</table> 
</div>

<!-- 学校START -->
	<div id="choose-box-wrapper">
	  <div id="choose-box">
		<div id="choose-box-title">
			<span>选择学校</span>
		</div>
		<div id="choose-a-province">
		</div>
		<div id="choose-a-school">
		</div>
		<div id="choose-box-bottom">
			<input type="botton" onclick="hide()" value="关闭" />
		</div>
	  </div>
	</div>
<!-- 学校 END -->

</BODY></HTML>
