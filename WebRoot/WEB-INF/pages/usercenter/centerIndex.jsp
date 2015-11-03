<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
  	<%@ include file="../include/head.jsp"%>
	<%@ include file="../include/ui.jsp"%>
  </head>
  
  <body>
  	<div class="mainbox">
          <div class="notification attention png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div><s:property value="%{#session.user.name}"/>：<span>您好!</span><p>欢迎进入<span class="green">第三届大学生科技资源共享与服务创新实践竞赛</span>用户中心! 
      </div>
    </div>
    <div class="notification attention png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div>
      <s:set name="headerID" value="%{#session.user.id}"></s:set>
      <p>您已下载　<s:property value="@com.share.support.OptionsCollection@getDownCount(#headerID)"/>　个数据集　　<s:if test="@com.share.support.OptionsCollection@ifUpload(#headerID)">您已经提交作品<p>您参赛主题是　
      	<s:iterator value="@com.share.support.OptionsCollection@getSubjects(#headerID)" status="st">
      		<a target="_blank" title="${uptime}  ${subject }" href="<%=basePath %>download.action?filename=${filepath}">作品<s:property value='#st.index+1'/> </a>&nbsp;&nbsp;&nbsp;
      	</s:iterator>
	  </p></s:if><s:else>您尚未提交作品</s:else></p>
      </div>
    </div>
    <div class="notification attention png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div>
      <p>下载须知：每个用户最多可以下载<b>&nbsp;10&nbsp;</b>个资源，超过<b>&nbsp;10&nbsp;</b>个资源将不能继续下载。</p>
      </div>
    </div>    
          
            <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>竞赛流程</h3>
        
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
      		<img alt="竞赛流程" src="<%=basePath %>img/lct1_01.jpg" />
      </div>
      <!-- End .content-box-content -->
    </div>
    
    <div class="content-box" style="display:none;">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>资源下载权限说明</h3>
        
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
      		<p style="text-indent: 2em;font-size: 18px;">为了确保本网资源的合理有效地利用，凡在本网注册的正式用户（即已经确认注册链接的用户），均可在资源列表中下载所需资源，每个帐号只有10次下载机会。<!-- 如果还需要更多的资源请点击<a href="#">【申请资源】</a>。 --></p>
      </div>
      <!-- End .content-box-content -->
    </div>
    <div class="notification error png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div><p style="font-size: 14px;"> <span style="color: red;">资源来源范围：</span><a href="http://www.escience.gov.cn" target="_blank">中国科技资源共享网(www.escience.gov.cn)</a></p></div>
    </div>
  	</div>
  </body>
</html>
