<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.share.bean.*"%>
<%@ include file="../include/tags.jsp"%>

<html>
<head>
<%@ include file="../include/head.jsp"%>
<%@ include file="../include/ui.jsp"%>

<script type="text/javascript"
	src="<%=basePath%>artDialog/artDialog.js?skin=green"></script>
</head>
<body>
	<div class="mainbox">
		<div class="bm_bt">
			<span class="bmbt_txt">报名信息</span>
		</div>

		<s:if test="%{student.ifperson==true}">
			<div class="notification attention png_bg">
				<a href="#" class="close"><img
					src="<%=basePath%>style/images/icons/cross_grey_small.png"
					title="Close this notification" alt="close" /> </a>
				<div>
					<p style="font-size: 14px;">您选择的是个人报名</p>
				</div>
			</div>
			<div class="student-info content-box-content">
				<div class="content-box-header ">
					<h3>个人信息</h3>
					<a href="javascript:void(0);"
						style="float:right;cursor:pointer;line-height:40px;margin-right:14px;"
						id="editheaderhandler">EDIT</a>

					<script type="text/javascript">
	      				function saveheader(){
							var school=$('#header-school').val();
			      			var yuanxi=$('#header-yuanxi').val();
			      			var zhuanye=$('#header-zhuanye').val();
			      			var code=$('#header-code').val();
			    			var phone=$('#header-phone').val();
			    			var addr=$('#header-addr').val();
			    			var email=$('#header-email').val();
			    			var name=$('#header-name').val();
			    			
			     			if(school && yuanxi && zhuanye && code && phone && addr && email && name){
					      		$('#edit_HRA').submit();
			      			}else{
			      				$('.warnfont').show();
			      				$('.warnfont').fadeOut(4000);
			      			}
			      			$('#editheaderui').hide();	      		
	      				}
	      	</script>
					<script type="text/javascript">
	      			
	      		$().ready(function(){
	      			$('#editheaderhandler').click(function(){
	      			 $("#person_INFO").hide();
	      			 $('#editheaderui').show();
	      			});
	      		});
	      	</script>
				</div>
				<!-- End .content-box-header -->
				<div id="person_INFO" class="student-info content-box-content">
					<div class="tab-content default-tab">
						<table>
							<tr>
								<td width="100" class="bm_h">邮箱：</td>
								<td><s:property value="student.email" /></td>
							</tr>
							<tr>
								<td class="bm_h">姓名：</td>
								<td><s:property value="student.name" />
								</td>
							</tr>

							<tr>
								<td class="bm_h">所在省份：</td>
								<td><s:property value="student.province" /></td>
							</tr>

							<tr>
								<td class="bm_h">所在学校：</td>
								<td><s:property value="student.school" /></td>
							</tr>

							<tr>
								<td class="bm_h">所在院系：</td>
								<td><s:property value="student.faculty" />
								</td>
							</tr>
							<tr>
								<td class="bm_h">所在年级：</td>
								<td><s:property value="student.classes" />
								</td>
							</tr>
							<tr>
								<td class="bm_h">所属专业：</td>
								<td><s:property value="student.major" />
								</td>
							</tr>
							<tr>
								<td class="bm_h">学生证号码：</td>
								<td><s:property value="student.code" />
								</td>
							</tr>
							<tr>
								<td class="bm_h">手机号码：</td>
								<td><s:property value="student.phone" />
								</td>
							</tr>
							<tr>
								<td class="bm_h">联系地址：</td>
								<td><s:property value="student.addr" />
								</td>
							</tr>

						</table>

					</div>
					<!-- End #tab3 -->
				</div>
				<!-- End .content-box-content -->
				<!-- start修改组长信息 -->
				<div style="display:none;clear:both;"
					class="student-info content-box-content" id="editheaderui">
					<form action="<%=basePath%>editHeader.action" class="editform"
						id="edit_HRA" method="post">
						<div id="editheaderinfoui">
							<p>
								<span style="width:200px;text-align:right;">组长邮箱：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-email"
									style="width:300px;text-align:right;" name="header.email"
									value="<s:property value="student.email"/>" /><input
									type="hidden" style="width:300px;text-align:right;"
									name="header.id" value="<s:property value="student.id"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">组长姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-name"
									style="width:300px;text-align:right;" name="header.name"
									value="<s:property value="student.name"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-school"
									style="width:300px;text-align:right;" name="header.school"
									value="<s:property value="student.school"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-yuanxi"
									style="width:300px;text-align:right;" name="header.faculty"
									value="<s:property value="student.faculty"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<select
									class="pcs001" name="header.classes"
									style="width:300px;text-align:right;"><option
										value="本科在读">本科在读</option>
									<option value="硕士在读">硕士在读</option>
									<option value="博士在读">博士在读</option>
								</select>
							</p>
							<p>
								<span style="width:200px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-zhuanye"
									style="width:300px;text-align:right;" name="header.major"
									value="<s:property value="student.major"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
									type="text" id="header-code"
									style="width:300px;text-align:right;" name="header.code"
									value="<s:property value="student.code"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">手机号码：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-phone"
									style="width:300px;text-align:right;" name="header.phone"
									value="<s:property value="student.phone"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">联系地址：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-addr"
									style="width:300px;text-align:right;" name="header.addr"
									value="<s:property value="student.addr"/>" />
							</p>
						</div>
						<div class="warnfont" style="display:none;margin-left:88px;">
							<font color="red">~AO~，请补全信息！</font>
						</div>
					</form>
					<div style="float:right;padding:8px;">
						<button id="editheaderbutton" onclick="saveheader();">保存</button>
					</div>
				</div>
				<!-- end修改组长信息 -->
			</div>
	</div>
	<!-- end修改组长信息 -->

	<div class="student-info content-box-content">
		<div class="content-box-header">
			<h3 style="cursor: s-resize;">教师信息</h3>
			<!-- Add the class "closed" to the Content box header to have it closed by default -->
			<a href="javascript:void(0);"
				style="float:right;cursor:pointer;margin-right:14px; line-height:40px;"
				class="editteacherhandler" id="editteacherhandler_1">EDIT</a>
		</div>
		<!-- End .content-box-header -->
		<div class="student-info content-box-content">
			<div class="tab-content default-tab" id="teacher-info">
				<s:iterator value="%{student.teachers}" id="teacher" status="i" end='1'>
					<table>
						<tr>
							<td width="100" class="bm_h">姓名：</td>
							<td>${teacher.name}</td>
						</tr>
						<tr>
							<td class="bm_h">所在学校：</td>
							<td>${teacher.school}</td>
						</tr>
						<tr>
							<td class="bm_h">所属专业：</td>
							<td>${teacher.major}</td>
						</tr>
						<tr>
							<td class="bm_h">职称：</td>
							<td>${teacher.title}</td>
						</tr>
						<tr>
							<td class="bm_h">手机号：</td>
							<td>${teacher.phone}</td>
						</tr>
					</table>

					<!-- start修改教师信息 -->
					<div style="display:none" class="editteacherrui" id ='sdasdsdsadsa'>
						<form action="<%=basePath%>editTeacher.action" class="editform"
							id="edit_YA" method="post">
							<div id="headerinfo" style="display:none">
								<p>
									<span style="width:200px;text-align:right;">组长邮箱：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										name="header.email"
										value="<s:property value="student.email"/>" /><input
										type="hidden" style="width:300px;text-align:right;"
										name="header.id" value="<s:property value="student.id"/>" />
								</p>
								<p>
									<span style="width:200px;text-align:right;">组长姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										name="header.name" value="<s:property value="student.name"/>" />
								</p>
								<p>
									<span style="width:200px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										name="header.school"
										value="<s:property value="student.school"/>" />
								</p>
								<p>
									<span style="width:200px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										name="header.faculty"
										value="<s:property value="student.faculty"/>" />
								</p>
								<p>
									<span style="width:200px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										name="header.classes"
										value="<s:property value="student.classes"/>" />
								</p>
								<p>
									<span style="width:200px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										value="<s:property value="student.major"/>" />
								</p>
								<p>
									<span style="width:200px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										name="header.code" value="<s:property value="student.code"/>" />
								</p>
								<p>
									<span style="width:200px;text-align:right;">手机号码：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										name="header.phone"
										value="<s:property value="student.phone"/>" />
								</p>
								<p>
									<span style="width:200px;text-align:right;">联系地址：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="hidden" style="width:300px;text-align:right;"
										name="header.addr" value="<s:property value="student.addr"/>" />
								</p>
							</div>
							<div class="playerinfo">
								<p>
									<span style="display:inline-block;width:80px;text-align:right;">教师姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="text"
										style="display:inline-block;width:300px;text-align:right;"
										class="tn001" name="teacher.name" value="${teacher.name}" /><input
										type="hidden" style="width:300px;text-align:right;"
										class="tid001" name="teacher.id" value="${teacher.id}" />
								</p>
								<p>
									<span style="display:inline-block;width:80px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="text"
										style="display:inline-block;width:300px;text-align:right;"
										class="ts001" name="teacher.school" value="${teacher.school}" />
								</p>
								<p>
									<span style="display:inline-block;width:80px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="text"
										style="display:inline-block;width:300px;text-align:right;"
										class="tm001" name="teacher.major" value="${teacher.major}" />
								</p>
								<p>
									<span style="display:inline-block;width:80px;text-align:right;">职称：</span>&nbsp;&nbsp;<input
										type="text"
										style="display:inline-block;width:300px;text-align:right;"
										class="tt001" name="teacher.title" value="${teacher.title}" />
								</p>
								<p>
									<span style="display:inline-block;width:80px;text-align:right;">手机号：</span>&nbsp;&nbsp;<input
										type="text"
										style="display:inline-block;width:300px;text-align:right;"
										class="tp001" name="teacher.phone" value="${teacher.phone}" />
								</p>
							</div>
							<div class="warnfont" style="display:none;margin-left:88px;">
								<font color="red">~AO~，请补全信息！</font>
							</div>
						</form>
						<div style="float:right;padding:8px;">
							<button class="editteacherbutton" onclick="saveteacher();">保存</button>
						</div>
					</div>
					<!-- end修改教师信息 -->
				</s:iterator>
				<%-- 				<%
					StudentHeader header = (StudentHeader) request
								.getAttribute("student");
						if (header.getTeachers().size() < 1) {
				%> --%>
			<%-- 	<!-- start修改教师信息 -->
				<div style="display:none;clear:both;" class="editteacherrui" id ='sasasdsadsad'
					id="editTeacher_23">
					<form action="<%=basePath%>editTeacher.action" class="editform"
						id="edit_TA1" method="post">
						<div id="headerinfo" style="display:none">
							<p>
								<span style="width:200px;text-align:right;">组长邮箱：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.email" value="<s:property value="student.email"/>" /><input
									type="hidden" style="width:300px;text-align:right;"
									name="header.id" value="<s:property value="student.id"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">组长姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.name" value="<s:property value="student.name"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.school"
									value="<s:property value="student.school"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.faculty"
									value="<s:property value="student.faculty"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.classes"
									value="<s:property value="student.classes"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									value="<s:property value="student.major"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.code" value="<s:property value="student.code"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">手机号码：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.phone" value="<s:property value="student.phone"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">联系地址：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.addr" value="<s:property value="student.addr"/>" />
							</p>
						</div>
						<div class="playerinfo">
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">教师姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="tn001" name="teacher.name" value="" /><input
									type="hidden" style="width:300px;text-align:right;"
									class="tid001" name="teacher.id" value="" />
							</p>
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="ts001" name="teacher.school" value="" />
							</p>
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="tm001" name="teacher.major" value="" />
							</p>
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">职称：</span>&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="tt001" name="teacher.title" value="" />
							</p>
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">手机号：</span>&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="tp001" name="teacher.phone" value="" />
							</p>
						</div>
						<div class="warnfont" style="display:none;margin-left:88px;">
							<font color="red">~AO~，请补全信息！</font>
						</div>
					</form>
					<div style="float:right;padding:8px;">
						<button class="editteacherbutton" onclick="saveteacher();">保存</button>
					</div>
				</div>
				<!-- end修改教师信息 --> --%>
				<%-- 				<%
					}
				%> --%>
				<script type="text/javascript">
      		 		$().ready(function(){
      			
	      			$('#editteacherhandler_1').click(function(){
	      				$('#teacher-info').hide();
      			
      				$("#sdasdsdsadsa").show();
				});
      		});
      	</script>
				<script type="text/javascript">
	      		function saveteacher(){
					var name=$('.tn001').val();
	      			var school=$('.ts001').val();
	      			var major=$('.tm001').val();
	    			var title=$('.tt001').val();
	    			var phone=$('.tp001').val();
	     			if(name && school && major && title && phone ){
			      		$('#edit_TA1').submit();
	      			}else{
	      				$('.warnfont').show();
	      				$('.warnfont').fadeOut(4000);
	      			}	      		
	      		}
	     </script>

			</div>
			<!-- End #tab3 -->
		</div>
		<!-- End .content-box-content -->
	</div>
	</s:if>
	<s:else>
		<div class="notification attention png_bg">
			<a href="#" class="close"><img
				src="<%=basePath%>style/images/icons/cross_grey_small.png"
				title="Close this notification" alt="close" /> </a>
			<div>
				<p style="font-size: 14px;">
					您选择的是团队报名&nbsp;&nbsp;&nbsp;&nbsp;<a style="cursor:pointer;"
						id="addplayerhandler">添加成员</a>
				</p>
			</div>
			<!-- start继续添加成员 -->
			<div style="display:none;margin-top:-15px" id="addplayerui">
				<form action="<%=basePath%>addPlayer.action" id="addform"
					method="post">
					<div id="headerinfo" style="display:none">
						<p>
							<span style="width:200px;text-align:right;">组长邮箱：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								name="header.email" value="<s:property value="student.email"/>" /><input
								type="hidden" style="width:300px;text-align:right;"
								name="header.id" value="<s:property value="student.id"/>" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">组长姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								name="header.name" value="<s:property value="student.name"/>" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								name="header.school"
								value="<s:property value="student.school"/>" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								name="header.faculty"
								value="<s:property value="student.faculty"/>" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								name="header.classes"
								value="<s:property value="student.classes"/>" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								value="<s:property value="student.major"/>" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								name="header.code" value="<s:property value="student.code"/>" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">手机号码：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								name="header.phone" value="<s:property value="student.phone"/>" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">联系地址：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="hidden" style="width:300px;text-align:right;"
								name="header.addr" value="<s:property value="student.addr"/>" />
						</p>
					</div>
					<div id="adderinfo">
						<p>
							<span style="width:200px;text-align:right;">成员姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="text" style="width:300px;text-align:right;" id="pn001"
								name="player1.name" value="" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="text" style="width:300px;text-align:right;" id="ps001"
								name="player1.school" value="" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="text" style="width:300px;text-align:right;" id="pf001"
								name="player1.faculty" value="" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<select
								id="pcs001" name="player1.classes"
								style="width:300px;text-align:right;"><option
									value="本科在读">本科在读</option>
								<option value="硕士在读">硕士在读</option>
								<option value="博士在读">博士在读</option>
							</select>
						</p>
						<p>
							<span style="width:200px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="text" style="width:300px;text-align:right;" id="pm001"
								name="player1.major" value="" />
						</p>
						<p>
							<span style="width:200px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
								type="text" style="width:300px;text-align:right;" id="pc001"
								name="player1.code" value="" />
						</p>
					</div>
					<div id="warnfont">
						<font color="red">AO~，请补全成员信息！</font>
					</div>
					<button id="realaddbutton" onclick="add();">确认添加</button>
				</form>
				<div style="float:right;padding:8px;">
					<script type="text/javascript">
	      	   
	      		function add(){
					var name=$('#pn001').val();
	      			var school=$('#ps001').val();
	      			var faculty=$('#pf001').val();
	      			var classes=$('#pcs001').val();
	      			var major=$('#pm001').val();
	    			var code=$('#pc001').val();
	    			alert(name + school + faculty + classes + major + code);
	     			if(name && school && faculty && classes && major && code ){
			      		$('#addform').submit();
	      			}else{
	      				$('#warnfont').show();
	      				$('#warnfont').fadeOut(4000);
	      			}
	      			$("#addplayerui").hide();    		
	      		}
	      	</script>

				</div>
				<script type="text/javascript">
      		 /* $().ready(function(){
      			$('#addplayerhandler').click(function(){art.dialog({
      				id: 'add-palyer-ui-00001',
      				title: '添加成员',
      				content: $('#addplayerui').html(),
      				lock:true
      			});});
      		});  */
      		 $().ready(function(){
      			$('#addplayerhandler').click(function(){
      			 $("#addplayerui").show();
      			});
      		}); 
      	</script>
			</div>
			<!-- end继续添加成员 -->
		</div>
		<div class="content-box  student-info">
			<div class="content-box-header">
				<h3>组长信息</h3>
				<a href="javascript:void(0);"
					style="float:right;cursor:pointer;line-height:40px;margin-right:14px;"
					id="editheaderhandler">EDIT</a>
				<!-- start修改组长信息 -->
				<div style="display:none;clear:both;" id="editheaderui">
					<form action="<%=basePath%>editHeader.action" class="editform"
						id="Hedit_H" method="post">
						<div id="editheaderinfoui">
							<p>
								<span style="width:200px;text-align:right;">组长邮箱：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" style="width:300px;text-align:right;"
									name="header.email" value="<s:property value="student.email"/>" /><input
									type="hidden" style="width:300px;text-align:right;"
									name="header.id" value="<s:property value="student.id"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">组长姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" style="width:300px;text-align:right;"
									name="header.name" value="<s:property value="student.name"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-school"
									style="width:300px;text-align:right;" name="header.school"
									value="<s:property value="student.school"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-yuanxi"
									style="width:300px;text-align:right;" name="header.faculty"
									value="<s:property value="student.faculty"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<select
									class="pcs001" name="header.classes"
									style="width:300px;text-align:right;"><option
										value="本科在读">本科在读</option>
									<option value="硕士在读">硕士在读</option>
									<option value="博士在读">博士在读</option>
								</select>
							</p>
							<p>
								<span style="width:200px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-zhuanye"
									style="width:300px;text-align:right;" name="header.major"
									value="<s:property value="student.major"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
									type="text" id="header-code"
									style="width:300px;text-align:right;" name="header.code"
									value="<s:property value="student.code"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">手机号码：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-phone"
									style="width:300px;text-align:right;" name="header.phone"
									value="<s:property value="student.phone"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">联系地址：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" id="header-addr"
									style="width:300px;text-align:right;" name="header.addr"
									value="<s:property value="student.addr"/>" />
							</p>
						</div>
						<div class="warnfont" style="display:none;margin-left:88px;">
							<font color="red">~AO~，请补全信息！</font>
						</div>
					</form>
					<div style="float:right;padding:8px;">
						<button id="editheaderbutton" onclick="saveheader();">保存</button>
					</div>
				</div>
				<!-- end修改组长信息 -->
				<script type="text/javascript">
	      		function saveheader(){
					var school=$('#header-school').val();
	      			var yuanxi=$('#header-yuanxi').val();
	      			var zhuanye=$('#header-zhuanye').val();
	      			var code=$('#header-code').val();
	    			var phone=$('#header-phone').val();
	    			var addr=$('#header-addr').val();
	     			if(school && yuanxi && zhuanye && code && phone && addr ){
			      		$('#Hedit_H').submit();
	      			}else{
	      				$('.warnfont').show();
	      				$('.warnfont').fadeOut(4000);
	      			}	      		
	      		}
	      	</script>
				<script type="text/javascript">

	      		$().ready(function(){
	      			$('#editheaderhandler').click(function(){
	      			 $("#tuandui_header").hide();
	      				$('#editheaderui').show();
	      		});
	      		}); 
	      	</script>
			</div>
			<!-- End .content-box-header -->
			<div id="tuandui_header" class="content-box-content">
				<div class="tab-content default-tab">
					<table>
						<tr>
							<td width="100" class="bm_h">邮箱：</td>
							<td><s:property value="student.email" /></td>
						</tr>
						<tr>
							<td class="bm_h">姓名：</td>
							<td><s:property value="student.name" />
							</td>
						</tr>

						<tr>
							<td class="bm_h">所在省份：</td>
							<td><s:property value="student.province" /></td>
						</tr>

						<tr>
							<td class="bm_h">所在学校：</td>
							<td><s:property value="student.school" /></td>
						</tr>

						<tr>
							<td class="bm_h">所在院系：</td>
							<td><s:property value="student.faculty" />
							</td>
						</tr>
						<tr>
							<td class="bm_h">所在年级：</td>
							<td><s:property value="student.classes" />
							</td>
						</tr>
						<tr>
							<td class="bm_h">所属专业：</td>
							<td><s:property value="student.major" />
							</td>
						</tr>
						<tr>
							<td class="bm_h">学生证号码：</td>
							<td><s:property value="student.code" />
							</td>
						</tr>
						<tr>
							<td class="bm_h">手机号码：</td>
							<td><s:property value="student.phone" />
							</td>
						</tr>
						<tr>
							<td class="bm_h">联系地址：</td>
							<td><s:property value="student.addr" />
							</td>
						</tr>

					</table>

				</div>
				<!-- End #tab3 -->
			</div>
			<!-- End .content-box-content -->
		</div>
		<div class="clear"></div>
		<s:iterator value="%{student.studentPlayers}" id="player" status="i">
			<div class="content-box student-info">
				<div class="content-box-header">
					<h3>成员 ${i.index + 1} 信息</h3>
					<a href="javascript:void(0);"
						style="float:right;cursor:pointer;padding-right:14px; line-height:40px;"
						idx="${i.index + 1}" class="editpalyerhandler" title="修改信息">EDIT</a>
					<a href="javascript:void(0);"
						style="float:right;cursor:pointer;padding-right:24px; line-height:40px;"
						idx="${i.index + 1}" class="deletepalyerhandler" to="${player.id}"
						name="${player.name}" title="删除成员">DELETE</a>
				</div>
				<!-- End .content-box-header -->
				<div class="content-box-content">
					<div class="tab-content default-tab">

						<table border="0" width="100%" cellspacing="0" cellpadding="0"
							class="bm_h">
							<tr>
								<td width="100" class="bm_h">姓名：</td>
								<td>${player.name}</td>
							</tr>
							<tr>
								<td class="bm_h">所在学校：</td>
								<td>${player.school}</td>
							</tr>
							<tr>
								<td class="bm_h">所在院系：</td>
								<td>${player.faculty}</td>
							</tr>
							<tr>
								<td class="bm_h">所在年级：</td>
								<td>${player.classes}</td>
							</tr>
							<tr>
								<td class="bm_h">所属专业：</td>
								<td>${player.major}</td>
							</tr>
							<tr>
								<td class="bm_h">学生证号码：</td>
								<td>${player.code}</td>
							</tr>
						</table>
					</div>
					<!-- End #tab3 -->
				</div>
				<!-- End .content-box-content -->

				<!-- start修改成员信息 -->
				<div style="display:none" class="editplayerui${i.index + 1}"
					idx="${i.index + 1}">
					<form action="<%=basePath%>editPlayer.action" class="editform"
						id="Hedit_SUB" method="post">
						<div class="playerinfo">
							<p>
								<span style="width:80px;text-align:right;">成员姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" style="width:300px;text-align:right;" class="pn001"
									name="player.name" value="${player.name}" /><input
									type="hidden" class="pid001" name="player.id"
									value="${player.id}" /><input type="hidden" name="header.id"
									value="${student.id}" />
							</p>
							<p>
								<span style="width:80px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" style="width:300px;text-align:right;" class="ps001"
									name="player.school" value="${player.school}" />
							</p>
							<p>
								<span style="width:80px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" style="width:300px;text-align:right;" class="pf001"
									name="player.faculty" value="${player.faculty}" />
							</p>
							<p>
								<span style="width:80px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<select
									class="pcs001" name="player.classes"
									style="width:300px;text-align:right;"><option
										value="本科在读">本科在读</option>
									<option value="硕士在读">硕士在读</option>
									<option value="博士在读">博士在读</option>
								</select>
							</p>
							<p>
								<span style="width:80px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text" style="width:300px;text-align:right;" class="pm001"
									name="player.major" value="${player.major}" />
							</p>
							<p>
								<span style="width:80px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
									type="text" style="width:300px;text-align:right;" class="pc001"
									name="player.code" value="${player.code}" />
							</p>
						</div>
						<div class="warnfont" style="display:none;margin-left:88px;">
							<font color="red">~AO~，请补全信息！</font>
						</div>
					</form>
					<div style="float:right;padding:8px;">
						<button class="editplayerbutton"
							onclick="saveplayer(${i.index + 1});">保存</button>
					</div>
				</div>
				<!-- end修改成员信息 -->
			</div>
		</s:iterator>
		<form action="<%=basePath%>delPlayer.action" id="delform"
			method="post">
			<input type="hidden" id="delplayerid" name="player.id" value />
		</form>
		<script type="text/javascript">
      		$().ready(function(){
      			/* $('.editpalyerhandler').click(function(){
      			var idx = $(this).attr('idx');
      			art.dialog({
      				id: 'edit-player-ui-00001',
      				title: '修改成员 ' + idx + ' 信息',
      				content: $('.student-info .editplayerui' + idx).html(),
      				lock:true
      			});}); */
      			$('.editpalyerhandler').click(function(){
      			var idx = $(this).attr('idx');
                	$('.student-info .editplayerui' + idx).show();
      			});
      			
      			$('.deletepalyerhandler').click(function(){
      			var id = $(this).attr('to');
      			var name = $(this).attr('name');
      			var delform = $('#delform');
      			var delplayerid = $('#delplayerid');
      			art.dialog({
      				id: 'delete-player-ui-00001',
      				title: '删除成员',
      				content: '确定要删除成员 ' + name + ' 吗？',
      				lock:true,
      				button: [{
      					name: '确定',
      					callback: function(){
      						delplayerid.val(id);
      						delform.submit();
      					}
      				},{
      					name:'取消'
      				}]
      			});});
      		});
      	</script>
		<script type="text/javascript">
	      		function saveplayer(){
					var name=$('.pn001').val();
	      			var school=$('.ps001').val();
	      			var faculty=$('.pf001').val();
	      			var classes=$('.pcs001').val();
	      			var major=$('.pm001').val();
	    			var code=$('.pc001').val();
	     			if(name && school && faculty && classes && major && code ){
			      		$('#Hedit_SUB').submit();
	      			}else{
	      				$('.warnfont').show();
	      				$('.warnfont').fadeOut(4000);
	      			}	      		
	      		}
	     </script>

		<div class="clear"></div>

		<div class="student-info">
			<div class="content-box-header">
				<h3>指导教师信息</h3>
				<a href="javascript:void(0);"
					style="float:right;cursor:pointer;margin-right:14px; line-height:40px;"
					class="editteacherhandler">EDIT</a>
			</div>
			<!-- End .content-box-header -->
			<div class="content-box-content">
				<div class="tab-content default-tab" id="teacher-info">
					<s:iterator value="%{student.teachers}" id="teacher">
						<div class="sdsdsdd">
						<table>
							<tr>
								<td width="100" class="bm_h">姓名：</td>
								<td>${teacher.name}</td>
							</tr>
							<tr>
								<td class="bm_h">所在学校：</td>
								<td>${teacher.school}</td>
							</tr>
							<tr>
								<td class="bm_h">所属专业：</td>
								<td>${teacher.major}</td>
							</tr>
							<tr>
								<td class="bm_h">职称：</td>
								<td>${teacher.title}</td>
							</tr>
							<tr>
								<td class="bm_h">手机号：</td>
								<td>${teacher.phone}</td>
							</tr>
						</table>
						</div>
						<!-- start修改教师信息 -->
						<div style="display:none" class="editteacherrui" id="editteacher_IFNO"">
							<form action="<%=basePath%>editTeacher.action" class="editform"
								id="tHedit_T" method="post">
								<div id="headerinfo" style="display:none">
									<p>
										<span style="width:200px;text-align:right;">组长邮箱：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											name="header.email"
											value="<s:property value="student.email"/>" /><input
											type="hidden" style="width:300px;text-align:right;"
											name="header.id" value="<s:property value="student.id"/>" />
									</p>
									<p>
										<span style="width:200px;text-align:right;">组长姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											name="header.name" value="<s:property value="student.name"/>" />
									</p>
									<p>
										<span style="width:200px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											name="header.school"
											value="<s:property value="student.school"/>" />
									</p>
									<p>
										<span style="width:200px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											name="header.faculty"
											value="<s:property value="student.faculty"/>" />
									</p>
									<p>
										<span style="width:200px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											name="header.classes"
											value="<s:property value="student.classes"/>" />
									</p>
									<p>
										<span style="width:200px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											value="<s:property value="student.major"/>" />
									</p>
									<p>
										<span style="width:200px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											name="header.code" value="<s:property value="student.code"/>" />
									</p>
									<p>
										<span style="width:200px;text-align:right;">手机号码：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											name="header.phone"
											value="<s:property value="student.phone"/>" />
									</p>
									<p>
										<span style="width:200px;text-align:right;">联系地址：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="hidden" style="width:300px;text-align:right;"
											name="header.addr" value="<s:property value="student.addr"/>" />
									</p>
								</div>
								<div class="playerinfo" >
									<p>
										<span
											style="display:inline-block;width:80px;text-align:right;">教师姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="text"
											style="display:inline-block;width:300px;text-align:right;"
											class="tn001" name="teacher.name" value="${teacher.name}" /><input
											type="hidden" style="width:300px;text-align:right;"
											class="tid001" name="teacher.id" value="${teacher.id}" />
									</p>
									<p>
										<span
											style="display:inline-block;width:80px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="text"
											style="display:inline-block;width:300px;text-align:right;"
											class="ts001" name="teacher.school" value="${teacher.school}" />
									</p>
									<p>
										<span
											style="display:inline-block;width:80px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="text"
											style="display:inline-block;width:300px;text-align:right;"
											class="tm001" name="teacher.major" value="${teacher.major}" />
									</p>
									<p>
										<span
											style="display:inline-block;width:80px;text-align:right;">职称：</span>&nbsp;&nbsp;<input
											type="text"
											style="display:inline-block;width:300px;text-align:right;"
											class="tt001" name="teacher.title" value="${teacher.title}" />
									</p>
									<p>
										<span
											style="display:inline-block;width:80px;text-align:right;">手机号：</span>&nbsp;&nbsp;<input
											type="text"
											style="display:inline-block;width:300px;text-align:right;"
											class="tp001" name="teacher.phone" value="${teacher.phone}" />
									</p>
								</div>
								<div class="warnfont" style="display:none;margin-left:88px;">
									<font color="red">~AO~，请补全信息！</font>
								</div>
							</form>
							<div style="float:right;padding:8px;">
								<button class="editteacherbutton" onclick="saveteacher();">保存</button>
							</div>
						</div>
						<!-- end修改教师信息 -->
					</s:iterator>

					<script type="text/javascript">
      		$().ready(function(){
      		/* 	$('.editteacherhandler').click(function(){art.dialog({
      				id: 'edit-teacher-ui-00001',
      				title: '修改教师信息',
      				content: $('#teacher-info .editteacherrui').html(),
      				lock:true
      			});}); */
      			$('.editteacherhandler').click(function(){
      			$(".sdsdsdd").hide();
				$('#editteacher_IFNO').show();
				});
      		});
      	</script>
					<script type="text/javascript">
	      		function saveteacher(){
					var name=$('.tn001').val();
	      			var school=$('.ts001').val();
	      			var major=$('.tm001').val();
	    			var title=$('.tt001').val();
	    			var phone=$('.tp001').val();
/* 	    			$('#ttn0011').val(name);
	      			$('#tts0011').val(school);
	      			$('#ttm0011').val(major);
	    			$('#ttt0011').val(title);
	    			$('#ttp0011').val(phone); */
	    			alert("fds"+name + school + major+ phone+ title);
	     			if(name && school && major && title && phone ){
			      		$('#tHedit_T').submit();
	      			}else{
	      				$('.warnfont').show();
	      				$('.warnfont').fadeOut(4000);
	      				}
	      			}
	     </script>
				</div>
				<!-- start修改教师信息 -->
				<%-- <div style="display:none;clear:both;" class="editteacherrui"
					>
					<form action="<%=basePath%>editTeacher.action" class="editform"
						method="post">
					<!-- 	<div style="display:none;">
					
								<input type="text" id= "ttn0011"  name="teacher.name" value="" />
                                <input type="text" id= "tts0011" name="teacher.school" value="" />
                                <input type="text" id= "ttm0011" name="teacher.major" value="" />
                                <input type="text" id= "ttt0011" name="teacher.title" value="" />
                                <input type="text" id= "ttp0011" name="teacher.phone" value="" />
						</div>	 -->					
						<div id="headerinfo" style="display:none">
							<p>
								<span style="width:200px;text-align:right;">组长邮箱：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.email" value="<s:property value="student.email"/>" /><input
									type="hidden" style="width:300px;text-align:right;"
									name="header.id" value="<s:property value="student.id"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">组长姓名：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.name" value="<s:property value="student.name"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.school"
									value="<s:property value="student.school"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在院系：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.faculty"
									value="<s:property value="student.faculty"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所在年级：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.classes"
									value="<s:property value="student.classes"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									value="<s:property value="student.major"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">学生证号码：</span>&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.code" value="<s:property value="student.code"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">手机号码：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.phone" value="<s:property value="student.phone"/>" />
							</p>
							<p>
								<span style="width:200px;text-align:right;">联系地址：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="hidden" style="width:300px;text-align:right;"
									name="header.addr" value="<s:property value="student.addr"/>" />
							</p>
						</div>
						<div class="playerinfo"  >
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">教师姓名1：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									 id= "ttn001" class="tn001" name="teacher.name" value="" /><input
									type="hidden" style="width:300px;text-align:right;"
									class="tid001" name="teacher.id" value="" />
							</p>
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">所在学校：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="ts001"  id= "tts001" name="teacher.school" value="" />
							</p>
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">所属专业：</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="tm001"  id= "ttm001" name="teacher.major" value="" />
							</p>
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">职称：</span>&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="tt001" id= "ttt001" name="teacher.title" value="" />
							</p>
							<p>
								<span style="display:inline-block;width:80px;text-align:right;">手机号：</span>&nbsp;&nbsp;<input
									type="text"
									style="display:inline-block;width:300px;text-align:right;"
									class="tp001"  id= "ttp001" name="teacher.phone" value="" />
							</p>
						</div>
						<div class="warnfont" style="display:none;margin-left:88px;">
							<font color="red">~AO~，请补全信息！</font>
						</div>
					</form>
					<div style="float:right;padding:8px;">
						<button class="editteacherbutton" onclick="saveteacher();">保存</button>
					</div>
				</div>
 --%>

				<!-- End #tab3 -->
			</div>
			<!-- End .content-box-content -->

			<div class="clear"></div>

		</div>

	</s:else>

	</div>
</body>
</html>
