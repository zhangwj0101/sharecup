<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<!--  
      <link href="<%=basePath %>css/zsjs.css" type="text/css" rel="stylesheet"/>
      -->
	</head>

	<body>
		<div class="title"></div>
		<div class="line_nav">
			<jsp:include page="../../index/head.jsp" flush="true"></jsp:include>
		</div>
		
		
		
		
		
		
		
		
		
		<div id="box">

          	<jsp:include page="../left.jsp"></jsp:include>
            
            
            <div class="right">
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="#">知识竞赛</a></p>
                
                
                <h2 class="h_title">知识竞赛</h2>
               
               
                <div class="p_cont">



	     <form class="bg">
		       <p>1、中国科技资源共享网是国家科技基础条件平台门户网站，其网址是</p>
			   <table  style="margin:0;">
			          <tr>
					      <td width="220">A  www.escience.gov.cn</td>
					    <td width="35"><input type="radio" name="a1"/></td>
						  <td width="168">B  www.escience.com</td>
					    <td width="77"><input type="radio"  name="a1"/></td>
						
					  </tr>
					  <tr>
					      <td>C  www.escience.com.cn</td>
						  <td><input type="radio"  name="a1"/></td>
						  <td>D  www.science.gov.cn</td>
						  <td><input type="radio"  name="a1"/></td>
					  </tr>
					 
		   </table>
		 </form>
		 
		 <br />
		 
		 <form class="bg">
		       <p>2、中国科技资源共享网成立于哪年正式开通</p>
		       <table  style="margin:0;">
			          <tr>
					      <td width="220">A  2008年 </td>
					    <td width="37"><input type="radio" name=""/></td>
						  <td width="169">B 2009年</td>
					    <td width="74"> <input type="radio" /></td>
						
					  </tr>
					  <tr>
					      <td>C 2010年</td>
						  <td><input type="radio" /></td>
						  <td>D 2011年</td>
						  <td><input type="radio" /></td>
					  </tr>
					 
		   </table>
		 </form>
		 
		 <br />
		 
		 <form class="bg">
		       <p style="line-height:26px;">3、判断：中国科技共享网涵盖自然科技资源领域、科学数据领域、科技文献领域、研究试验基地与</p>
		       <p>大型科学仪器设备领域、网络科研环境领域等海量科技资源信息</p>
		       <table width="166"  style="margin:0;">
			          <tr>
					      <td width="30">正确 </td>
					    <td width="36"><input type="radio" /></td>
						  <td width="38">错误</td>
					    <td width="42"><input type="radio" /></td>
						
					  </tr>
					  
		   </table>
		 
		 </form>
		 
		 <br />
		 
		 
		 <form class="bg">
		       <p style=" line-height:26px;">4、判断 ：以国家平台建设为引导，各地方平台建设工作有了极大推进。目前，30多个省、市、区已经启动了地方平台建设工作</p>
		       <table width="167"  style="margin:0;">
			          <tr>
					      <td width="28">正确 </td>
					    <td width="39"><input type="radio" /></td>
						  <td width="31">错误</td>
					    <td width="49"><input type="radio" /></td>
						
					  </tr>
		   </table>
		 
		 </form>
		 
		 <br />
		 
		 
		  <form class="bg">
		       <p>5、判断：目前，加盟中国科技资源共享网的有北京、广东、深圳三个省份</p>
		       <table width="171"  style="margin:0;">
			          <tr>
					      <td width="29">正确 </td>
					    <td width="39"><input type="radio" /></td>
						  <td width="39">错误</td>
					    <td width="49"><input type="radio" /></td>
						
					  </tr>
					  
					 
		   </table>
		 
		 </form>
		 
		 <br />
		 
		 
		 <form class="bg">
		       <p>6、判断：中国数字科技馆是国家科技平台建设的重要成果，也是23家已通过认定的平台之一 </p>
		       <table  style="margin:0;">
			          <tr>
					      <td width="29">正确</td>
					    <td width="39"><input type="radio" /></td>
						  <td width="39">错误</td>
						  <td width="49"><input type="radio" /></td>
						
					  </tr>
					 
		   </table>
		 </form>
		
		<br />
		
		
		 <form class="bg">
		       <p>7、针对目前我国科研资源共享效率较低的状况，科技部、财政部通过总体规划设计，按照“整合、共享、完善、提高”的建设方针，汇集了海量科技资源信息，面向全社会进行开放服务</p>
		       <table width="178"  style="margin:0;">
			          <tr>
					      <td width="29">正确</td>
					    <td width="39"><input type="radio" /></td>
						  <td width="39">错误</td>
					    <td width="49"><input type="radio" /></td>
						
					  </tr>
					 
		   </table>
		 
		 
		 </form>
		 <div class="tj">
			 <ul >
			     <li><img src="<%=basePath %>img/img_8.png" width="78" height="29"/></li>
				 <li><img src="<%=basePath %>img/img_9.png"width="78" height="29"/></li>
			 
			 </ul>
		 </div>

                </div>
            </div>
          </div>			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
<div class="content" style="display:none;">
     <p style="margin-bottom:20px;"><span style="color:#a3a4a4">当前位置：<a href="<%=basePath %>index/pageIndex.action" style="color:#a3a4a4; text-decoration:none;">首页  > </a></span>知识竞赛 </p>
     <div class="left">
	 <h2 class="h2">知识竞赛</h2>
	   
	     <form class="bg">
		       <p>1、中国科技资源共享网是国家科技基础条件平台门户网站，其网址是</p>
			   <table  style="margin:0;">
			          <tr>
					      <td width="220">A  www.escience.gov.cn<br /></td>
					    <td width="35"><input type="radio" name="a1"/><br /></td>
						  <td width="168">B  www.escience.com<br /></td>
					    <td width="77"><input type="radio" name="a1"/><br /></td>
						
					  </tr>
					  <tr>
					      <td>C  www.escience.com.cn<br /></td>
						  <td><input type="radio" name="a1" /><br /></td>
						  <td>D  www.science.gov.cn<br /></td>
						  <td><input type="radio" name="a1" /><br /></td>
					  </tr>
					 
		   </table>
		 
		 </form>
		 <form class="bg">
		       <p>2、中国科技资源共享网成立于哪年正式开通</p>
		       <table  style="margin:0;">
			          <tr>
					      <td width="220">A  2008年 <br /></td>
					    <td width="37"><input type="radio" name="a2" /><br /></td>
						  <td width="169">B 2009年<br /></td>
					    <td width="74"> <input type="radio"  name="a2"/><br /></td>
						
					  </tr>
					  <tr>
					      <td>C 2010年<br /></td>
						  <td><input type="radio"  name="a2"/><br /></td>
						  <td>D 2011年<br /></td>
						  <td><input type="radio"  name="a2"/><br /></td>
					  </tr>
					 
		   </table>
		 
		 
		 
		 </form>
		 <form class="bg">
		       <p style="line-height:26px;">3、判断：中国科技共享网涵盖自然科技资源领域、科学数据领域、科技文献领域、研究试验基地与</p>
		       <p>大型科学仪器设备领域、网络科研环境领域等海量科技资源信息</p>
		       <table width="166"  style="margin:0;">
			          <tr>
					      <td width="30">正确 <br /></td>
					    <td width="36"><input type="radio"  name="a3"/><br /></td>
						  <td width="38">错误<br /></td>
					    <td width="42"><input type="radio"  name="a3"/><br /></td>
						
					  </tr>
					  
					 
		   </table>
		 
		 
		 
		 </form>
		 <form class="bg">
		       <p style=" line-height:26px;">4、判断 ：以国家平台建设为引导，各地方平台建设工作有了极大推进。目前，30多个省、市、区</p>
		       <p>已经启动了地方平台建设工作</p>
		       <table width="167"  style="margin:0;">
			          <tr>
					      <td width="28">正确 <br /></td>
					    <td width="39"><input type="radio"  name="a4"/><br /></td>
						  <td width="31">错误<br /></td>
					    <td width="49"><input type="radio"  name="a4"/><br /></td>
						
					  </tr>
					  
					 
		   </table>
		 
		 
		 
		 </form>
		  <form class="bg">
		       <p>5、判断：目前，加盟中国科技资源共享网的有北京、广东、深圳三个省份</p>
		       <table width="171"  style="margin:0;">
			          <tr>
					      <td width="29">正确 <br /></td>
					    <td width="39"><input type="radio"  name="a5"/><br /></td>
						  <td width="39">错误<br /></td>
					    <td width="49"><input type="radio"  name="a5"/><br /></td>
						
					  </tr>
					  
					 
		   </table>
		 
		 
		 
		 </form>
		 <form class="bg">
		       <p>6、判断：中国数字科技馆是国家科技平台建设的重要成果，也是23家已通过认定的平台之一 </p>
		       <table  style="margin:0;">
			          <tr>
					      <td width="29">正确<br /></td>
					    <td width="39"><input type="radio"  name="a6"/><br /></td>
						  <td width="39">错误<br /></td>
						  <td width="49"><input type="radio"  name="a6"/><br /></td>
						
					  </tr>
					  
						  
					 
		   </table>
		 
		 
		 
		 </form>
		
		 <form class="bg">
		       <p>7、针对目前我国科研资源共享效率较低的状况，科技部、财政部通过总体规划设计，按照“整合、</p>
		       <p>共享、完善、提高”的建设方针，汇集了海量科技资源信息，面向全社会进行开放服务</p>
		       <table width="178"  style="margin:0;">
			          <tr>
					      <td width="29">正确<br /></td>
					    <td width="39"><input type="radio"  name="a7"/><br /></td>
						  <td width="39">错误<br /></td>
					    <td width="49"><input type="radio"  name="a7"/><br /></td>
						
					  </tr>
					  
						  
					 
		   </table>
		 
		 
		 
		 </form>
		 
		 <br /><br />
		 <div class="tj">
		 <ul >
		     <li><img src="<%=basePath %>img/img_8.png" width="78" height="29"/><img src="<%=basePath %>img/img_9.png"width="78" height="29"/></li>
		 </ul>
		 </div>
		 
	     
    
  </div>
	 <div class="right">
       <jsp:include page="../left.jsp"></jsp:include>
		  <div class="question">
		       <p class="p1">竞赛相关链接</p>
	           <div class="q">
	    <p><a href="">中国科技资源共享网</a>
	      <p><a href="">中国科技资源共享网</a></p>
	      <p><a href="">中国科技资源共享网</a></p>
	    <p><a href="">中国科技资源共享网</a></p>
	    <p><a href="">中国科技资源共享网</a></p>
	    <p><a href="">中国科技资源共享网</a></p>
	    <p><a href="">中国科技资源共享网</a></p>
	    <p><a href="">中国科技资源共享网</a></p>
	    <p><a href="">中国科技资源共享网</a></p>
	    <p><a href="">中国科技资源共享网</a></p>
	    <p><br />
	      </p>
            </div>
		  
		  </div>
		  <div>
	<jsp:include page="../depart.jsp"></jsp:include>
	 
	 </div>
	 

</div>
</div>

<!-- 
<div class="footer">版权所有：国家科技基础条件平台中心 | 京ICP备09051888号</div>
-->

<jsp:include page="../foot.jsp"></jsp:include>

</body>
</html>
		