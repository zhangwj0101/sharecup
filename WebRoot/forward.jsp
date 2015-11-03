<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="index/include/tags.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>第三届大学生科技资源共享与服务创新实践竞赛</title>
	<script src="<%=basePath %>js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="<%=basePath%>js/accordion.js" type=text/javascript></script>
	<script src="<%=basePath%>js/cycle.js" type=text/javascript></script>
	<script type=text/javascript>
		location.href="<%=basePath%>index/pageIndex.action";
	<!--
		// Accordion
		jQuery().ready(function(){
			jQuery('#serviceContent').accordion({
			autoheight: false
			});
		});
		// Cycle
		$(function() {
			$('#fW_Content').cycle({ 
			fx:    'scrollLeft',
			pager: '#fW_Controls'
 			});
		});
	//-->
	</script>
	</head>

	<body>
    <div id="main_line">
      <div id="main">
        <div id="content">
  	 <!-- head -->
  	 <jsp:include page="index/head.jsp" flush="true"></jsp:include>
     <!-- head -->
     <div id="l_cont">
            <div id="con_2">
              <div class="t1">
                <h2><span>竞赛新闻 </span></h2>
                <ul class="t_list">
                <s:if test="#request.newslist!=null">
                <s:iterator value="#request.newslist" status="i">
                <c:if test="${type == '1'}">
                <s:if test="#i.index<=8">
                  <li><a href="../getNewsById?id=<s:property value="id"/>"><s:property value="title"/></a></li>
                </s:if>
                </c:if>
                </s:iterator>
                </s:if>
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
                <h2><span>竞赛通告</span></h2>
                <ul class="t_list">
                  <s:if test="#request.newslist!=null">
                <s:iterator value="#request.newslist" status="i">
                <c:if test="${type == '2'}">
                <s:if test="#i.index<=8">
                  <li><a href="../getNewsById?id=<s:property value="id"/>"><s:property value="title"/></a></li>
                </s:if>
                </c:if>
                </s:iterator>
                </s:if>
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
              <p class="flying"><img src="<%=basePath%>img/fj.png"  /></p>
             </div>
            </div>
          
          </div>
          
          <jsp:include page="index/foot.jsp" flush="true"></jsp:include>
        </div>
      </div>
    </div>
</body>
</html>