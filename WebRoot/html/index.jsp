<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>第三届大学生科技资源共享与服务创新实践竞赛</title>
	<link rel="stylesheet" type="text/css" href="css/index.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="<%=basePath %>js/accordion.js" type="text/javascript"></script>
	<script src="<%=basePath %>js/cycle.js" type="text/javascript"></script>
	<script type="text/javascript">
	<!--
		// Accordion
		jQuery().ready(function(){
			jQuery('#serviceContent').accordion({
			autoheight: false
			});
			$('#loginbutton').click(function(){
				art.dialog({
					id: 'ui-00001',
					title: '用户登录',
					content: $('#loginui').html(),
					lock: true
				});
			});
		});
		// Cycle
		$(function() {
			$('#fW_Content').cycle({ 
			fx:    'scrollLeft',
			pager: '#fW_Controls'
 			});
		});
		function check(){
            	var username = $("#ui-00001 #username").val();
            	var password = $("#ui-00001 #password").val();
            	var authcode = $("#ui-00001 #authcode").val();
            	if(username==''){
            	 	alert('请输入用户名!'); 
            	}else if(password==''){
            	 	alert('请输入密码!');
            	}else if(authcode==''){
            	 	alert('请输入验证码');
            	}else{
            	 	document.forms[0].submit();
            	}
            }
	//-->
	</script>
	</head>

	<body>
    <div id="main_line">
      <div id="main">
      	<div><img src="img/logo.jpg" alt="" /></div>
        <div id="content">
          <div id="nav">
            <div class="navlist">
              <ul class="navlist1">
                <li><a href="index.html" class="ADTabsOn">首页</a></li>
                <li><a href="#">竞赛动态</a></li>
                <li><a href="#">竞赛介绍</a> </li>
                <li><a href="#">竞赛主题</a></li>
                <li><a href="#">竞赛指南</a>
                  <ul class="navlist2">
                    <li><a href="#">竞赛流程</a></li>
                    <li><a href="#">参赛条件</a></li>
                    <li><a href="#">作品主题</a></li>
                  </ul>
                </li>
                <li><a href="#">组织机构</a></li>
                <li><a href="#">我要报名</a></li>
                <li><a href="#">知识竞赛</a></li>
                <li><a href="#">关于我们</a></li>
                <li><a href="#">联系我们</a></li>
              </ul>
              
<c:if test="${user==null||user.username==''}">
	<span style="float:right; line-height:32px;"><a id="loginbutton" href="javascript:void(0);">登录</a><a href="<%=basePath%>index/pageIndex_region.action" style="margin:0 15px;">注册</a></span>
</c:if>
<c:if test="${user!=null&&user.username!=''}">
	<span style="float:right; line-height:32px;"><a href="<%=basePath %>usercenter/index.action"><s:property value="%{#session.user.name}"/></a><a href="<%=basePath %>loggout.action" >退出</a></span>
</c:if>              
              
              <div id="loginui" style="display:none">
				  <div id="user">
					  <div class="u1">
					  	<form action="<%=basePath %>loggin.action" method="post">
						  <p style="padding: 5px;"><span >用户名：</span><span><input name="username" id="username" class="wbk" tabindex="1"  type="text" style="height:20px; margin-left:10px;"></span></p>
						  <p style="padding: 5px;"><span>密　码：</span><span><input name="password" id="password" class="wbk" tabindex="1"  type="password" style="height:20px; margin-left:10px;"></span></p>
						  <p style="padding: 5px;"><span>验证码：</span><span><input name="authcode" id="authcode" style="height:20px; margin-left:10px;width:60px " maxlength="4" tabindex="1"  type="text"></span><span style=""><jsp:include page="../index/include/img.jsp" flush="true"></jsp:include></span></p>
						  <ul>
						 	<li>
						 	 <p style="padding-top: 15px;float:right;"><span class="denglu_button" style="cursor:pointer;"><a id="denglu" type="button" onclick="check();" ><img src="<%=basePath%>img/dl.png" border="0" /></a> </span><span class="zhuce_button"><a href="<%=basePath %>index/pageIndex_region.action" title="报名注册" class="bmzc"><img src="<%=basePath%>img/zc.png" border="0" alt="报名注册"></a></span></p>
						 	</li>
						  </ul>
					 	</form>
					  </div>
				  </div>
              </div>
            </div>
          </div>
          <div id="l_cont">
            <div id="con_2">
              <div class="t1">
                <h2><span>竞赛新闻</span><a href="#">more</a></h2>
                <ul class="t_list">
                  <li><a href="#">竞赛新闻标题</a></li>
                  <li><a href="#">竞赛新闻标题竞赛新</a></li>
                  <li><a href="#">竞赛新闻标题竞赛新闻</a></li>
                  <li><a href="#">竞赛新闻标题竞赛</a></li>
                  <li><a href="#">竞赛新闻标题竞赛新</a></li>
                  <li><a href="#">竞赛新闻标题竞赛新闻</a></li>
                  <li><a href="#">竞赛新闻标题竞赛</a></li>
                  <li><a href="#">竞赛新闻标题竞赛新闻</a></li>
                  <li><a href="#">竞赛新闻标题竞赛新闻</a></li>
                </ul>
              </div>
            </div>
            <div id="l_Content"> 
              <!--图片切换-->
              <div id="newspic">
                <div id="pic">
                  <div class="pic_list" id="fW_Content">
                    <div class="qiehuan"> <img src="img/img1.jpg" />
                      <p class="text"><a href="#">新闻标题</a></p>
                    </div>
                    <div class="qiehuan"> <img src="img/img2.jpg" />
                      <p class="text"><a href="#">新闻标题</a></p>
                    </div>
                    <div class="qiehuan"> <img src="img/img3.jpg" />
                      <p class="text"><a href="#">新闻标题</a></p>
                    </div>
                    <div class="qiehuan"> <img src="img/img2.jpg" />
                      <p class="text"><a href="#">新闻标题</a></p>
                    </div>
                  </div>
                  <div id="fW_Controls"></div>
                </div>
              </div>
              <!--图片切换--> 
            </div>
            <div id="con_2">
              <div class="t1">
                <h2><span>竞赛通告</span><a href="#">more</a></h2>
                <ul class="t_list">
                  <li><a href="#">通知通通告通告通告告</a></li>
                  <li><a href="#">通知通通告通告告</a></li>
                  <li><a href="#">通知通通告通告通告告</a></li>
                  <li><a href="#">通知通通告告告</a></li>
                  <li><a href="#">通知通通告通告通告告</a></li>
                  <li><a href="#">通知通通告告通告告</a></li>
                  <li><a href="#">通知通通告通告通告告</a></li>
                  <li><a href="#">通知通通告通告告</a></li>
                  <li><a href="#">通知通通告通告告</a></li>
                </ul>
              </div>
            </div>
            <div class="con_23">
              <div class="t13">
                <h2><span>参赛条件</span><a href="#">more</a></h2>
                <div class="t_list">
                  <p>全国所有高校和相关研究院所的在读本科生、研究生、博士生都可以个人或团队形式（队员数量不得超过5人）参加竞赛。 参赛团队和个人可根据需要，邀请1-2名指导教师或专家给予指导帮助。 </p>
                </div>
              </div>
            </div>
            <div class="con_23">
              <div class="t13">
                <h2><span>竞赛流程</span><a href="#">more</a></h2>
                <div class="t_list">
                   <p>(1)报名 团队及个人按照相关要求通过大赛官网报名参赛（网址：cup.escience.gov.cn），获得参赛账号密码。</p>
                </div>
              </div>
            </div>
            <div class="con_23">
              <div class="t13">
                <h2><span>评选规则</span><a href="#">more</a></h2>
                <div class="t_list">
                  <p>为了保证公平、公正、公开、原创的原则，2013年11月中旬入围的候选作品名单将在竞赛的官方网站展示，同时评委会将采取现场答辩的形式对作品进行评审，12月将在官方网站公布获奖作品名单，公示期限为10天。</p>
                </div>
              </div>
            </div>
            <div class="con_23" style="margin-right:0;">
              <div class="t13">
                <h2><span>疑难解答</span><a href="#">more</a></h2>
                <ul class="t_list" id="bceia_cont1_list">
                 <li>Q：密码丢失怎样找回？ </li> 
<li>A：请输入您注册用的邮箱地址，系统会将重置密码的链接发送到您注册用的邮箱中。</li>
<li>Q：怎样报名？ </li>
<li>A：注册用户填写报名申请表</li>
                </ul>
              </div>
            </div>
            
            <div id="nav_link">
             <div class="nav_class">
              <ul>
               <li><a class="title1" href="#">指导单位</a></li>
               <li><a href="#">指导单位指导单位</a></li>
               <li><a href="#">指导单位456</a></li>
               <li><a href="#">指导单位指导2单位</a></li>
               <li><a href="#">指导单位指导单位23</a></li>
               <li><a href="#">指导单位456</a></li>
               <li><a href="#">指导单位指导2单位</a></li>
               <li><a href="#">指导单位指导单位23</a></li>
              </ul>
              <ul>
               <li><a class="title1" href="#">主办单位</a></li>
               <li><a href="#">主办单位指导单位</a></li>
               <li><a href="#">主办单位456</a></li>
               <li><a href="#">主办单位指导2单位</a></li>
               <li><a href="#">主办单位指导单位23</a></li>
               <li><a href="#">主办单位指导2单位</a></li>
               <li><a href="#">主办单位指导单位23</a></li>
              </ul>
              <ul>
               <li><a class="title1" href="#">承办单位</a></li>
               <li><a href="#">承办单位指导单位</a></li>
               <li><a href="#">承办单位456</a></li>
               <li><a href="#">承办单位指导2单位</a></li>
               <li><a href="#">承办单位指导单位23</a></li>
               <li><a href="#">承办单位指导2单位</a></li>
              </ul>
              <ul style="background:none;">
               <li><a class="title1" href="#">协办单位</a></li>
               <li><a href="#">协办单位指导单位</a></li>
               <li><a href="#">协办单位456</a></li>
               <li><a href="#">协办单位指导2单位</a></li>
               <li><a href="#">协办单位指导单位23</a></li>
              </ul>
              <p class="flying"><img src="img/fj.png"  /></p>
             </div>
            </div>
          
          </div>
          <div id="friend_link">
            <h2>友情链接</h2>
            <ul>
              <li><a href="#">科技部火炬高技术产业开发中心</a></li>
              <li><a href="#">科技部科技型中小企业技术创新基金管理中心</a></li>
             
            </ul>
          </div>
          <div id="footer">
            <p>Copyright © 2015第三届大学生科技资源共享与服务创新实践竞赛　All Rights Reserved.<br />
              地址：北京市海淀区学院路37号         邮箱：xtcx@buaa.edu.cn           电话：010-12345678</p>
          </div>
        </div>
      </div>
    </div>
</body>
</html>
