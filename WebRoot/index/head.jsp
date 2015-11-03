<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/tags.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index.css" />
<script src="<%=basePath %>js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="<%=basePath %>artDialog/artDialog.js?skin=blue" type="text/javascript"></script>
	<script type=text/javascript>
	<!--
		// Accordion
		var l,u,p,a;
		jQuery().ready(function(){
			$('#loginbutton').click(function(){
				l = $('#loginform');
				u = $('#username_');
				p = $('#password_');
				a = $('#authcode_');
				
				art.dialog({
					id: 'ui-00001',
					title: '用户登录',
					content: $('#loginui').html(),
					lock: true
				});
				
				$(".aui_content #username1").focus();
			});		
			$('.h-s').click(function(){
				art.dialog({
					id: 'ui-00002',
					title: '报名须知',
					content: $('#highschool').html(),
					lock: true,
					margin: 0,
					button: [{
						name: '下载报名表',
						callback: function(){window.open('http://pan.baidu.com/s/1qW1MZqW','_blank');}
					},{
						name: '取消'
					}]
				});	
			});	
			
			
			$('.m-share a:not(.h-s)').click(function(){
			});	
			
			$.ajax({
				type:'post',
				url: '<%=basePath %>/getNews.action',
				beforeSend: function(){},				
				success: function(data){
					$('#list0001').html(data);
				},
				error: function(a,b,c){},
				cache:false
			});			
		
		});
		function check(){
            	var username = $(".aui_content #username1").val();
            	var password = $(".aui_content #password1").val();
            	var authcode = $(".aui_content #authcode1").val();
            	if(username==''){
            	 	alert('请输入用户名!'); 
            	}else if(password==''){
            	 	alert('请输入密码!');
            	}else if(authcode==''){
            	 	alert('请输入验证码');
            	}else{
            		u.val(username);
            		p.val(password);
            		a.val(authcode);
            		l.submit();
            	}
            }
            
            function initTab(){
            	$('.ADTabsOn').removeClass('ADTabsOn');
            	var currTab = '${tabon}';
            	if(!currTab){currTab='index';}
            	$("a[tab='" + currTab + "']").attr('class','ADTabsOn');
            }
	//-->
	</script>


<!-- ADTabsOn -->


<div style="width:998px;margin:0 auto;">
<img src="<%=basePath%>img/logo.jpg" alt="" />
<div id="nav">
<div class="navlist">
<ul class="navlist1">
<!--  <LI><A class="nav_off" id=mynav0 onmouseover=javascript:qiehuan(0) href="<%=basePath %>index/pageIndex.action"><SPAN>首 页</SPAN></A></LI>-->
<LI><A class="ADTabsOn" tab="index" href="<%=basePath %>index/pageIndex.action">首 页</A></LI>
<!-- <LI class="menu_line"></LI>
<li><a href="<%=basePath %>index/pageIndex_share.action"><span>科技资源与资源共享</span></a></li>
  -->
  <!-- 
<li><a href="<%=basePath %>index/pageIndex_share.action" tab="share">竞赛动态</a></li>
 -->
<li><a href="<%=basePath %>index/pageIndex_intro.action" tab="intro">竞赛介绍</a></li>
<li><a href="<%=basePath %>index/pageIndex_theme.action" tab="theme">竞赛题目</a></li>
<li><a href="#" tab="flow">竞赛指南</a>
<ul class="navlist2">
<li><a href="<%=basePath %>index/pages/flow/1.jsp">竞赛流程</a></li>
<li><a href="<%=basePath %>index/pages/flow/2.jsp">参赛条件</a></li>
<li><a href="<%=basePath %>index/pages/flow/3.jsp">时间节点</a></li>
<li><a href="<%=basePath %>index/pages/flow/4.jsp">作品评审</a></li>
<li><a href="<%=basePath %>index/pages/flow/5.jsp">主题及形式</a></li>
<li><a href="<%=basePath %>index/pages/flow/6.jsp">注意事项</a></li>
 </ul>
</li>
<li><a href="#" tab="organizer">组织机构</a>
<ul class="navlist2">
<li><a href="<%=basePath %>index/pages/org/1.jsp">参与单位</a></li>
<li><a href="<%=basePath %>index/pages/org/2.jsp">组织委员会</a></li>
<li><a href="<%=basePath %>index/pages/org/3.jsp">专家委员会</a></li>
<li><a href="<%=basePath %>index/pages/org/4.jsp">组委会秘书处</a></li>
 </ul>
</li>
<li><a href="<%=basePath %>index/pageIndex_prize.action" tab="prize">奖项设置</a></li>
<li><a href="#" tab="region">我要报名</a>
<ul class="navlist2">
<li><a <s:if test="%{#session.user==null}">href="<%=basePath %>index/pageIndex_region.action"</s:if><s:else>href="#"</s:else> >个人团队</a></li>
<li><a <s:if test="%{#session.user==null}">href="javascript:void(0);" class="h-s"</s:if><s:else>href="#"</s:else> >单位组织</a></li>
 </ul>
</li>

<li><a href="<%=basePath %>index/pageIndex_qa.action" tab="qa">答疑解惑</a></li>

<li><a href="<%=basePath %>index/pageIndex_contact.action" tab="contact">联系我们</a></li>
<li><a href="<%=basePath %>index/pageIndex_download.action" tab="download">下载专区</a></li>

</ul>

<script type="text/javascript">
initTab();
</script>

<c:if test="${user==null||user.username==''}">
	<span style="float:right; line-height:32px;"><a id="loginbutton" href="javascript:void(0);" style="margin:0 15px;">登录</a><a href="<%=basePath%>index/pageIndex_region.action" style="margin:0 15px;display:none;">注册</a></span>
</c:if>
<c:if test="${user!=null&&user.username!=''}">
	<span style="float:right; line-height:32px;"><a href="<%=basePath %>forward.action"><s:property value="%{#session.user.name}"/>&nbsp;个人中心</a><a href="<%=basePath %>loggout.action" style="margin:0 15px;">退出</a></span>
</c:if>   
<div id="loginui" style="display:none">
	<div id="user">
		<div class="u1">
			<p style="padding-top: 5px;"><span >用户名：</span><span><input name="username1" id="username1" tabindex="1"  type="text" style="height:20px; "></span></p>
			<p style="padding-top: 5px;"><span>密　码：</span><span><input name="password1" id="password1" tabindex="1"  type="password" style="height:20px; "></span></p>
			<p style="padding-top: 5px;"><span style="float:left;">验证码：</span><span style="float:left;"><input name="authcode1" id="authcode1" style="height:20px; width:60px " maxlength="4" tabindex="1"  type="text"></span><span style="float:left;"><jsp:include page="../index/include/img.jsp" flush="true"></jsp:include></span></p>
			<ul style="clear:both;">
				<li>
					<p style="padding-top: 15px;float:right;"><a href="<%=basePath %>forgetpass.action" target="_blank" id="forget-password">忘记密码？</a>&nbsp;&nbsp;<span class="denglu_button" style="cursor:pointer;"><a id="denglu" type="button" onclick="check();" ><img src="<%=basePath%>img/dl.png" border="0" /></a> </span><span class="zhuce_button"><a href="<%=basePath %>index/pageIndex_region.action" title="报名注册" class="bmzc"><img src="<%=basePath%>img/zc.png" border="0" alt="报名注册"></a></span></p>
				</li>
			</ul>
		</div>
	</div>
</div>
<form action="<%=basePath %>loggin.action" method="post" id="loginform">           
  <input name="username" id="username_" type="hidden" value/>
  <input name="password" id="password_" type="hidden" value/>
  <input name="authcode" id="authcode_" type="hidden" value/>
</form>

</div>
</div>
</div>

<!-- 高校报名 -->
<div id="highschool" style="display:none;">
<div style="line-height:30px;font-size:14px;width: 300px;">
	<p style="text-indent: 2em;">参赛高校和研究院所组织本单位学生参赛，收集参赛学生姓名、参赛题目等信息，通过大赛官网提交，由大赛承办单位进行资格确认后，统一分配账号密码。</p>
</div>
</div>