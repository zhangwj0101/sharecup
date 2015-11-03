<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title>作品主题及形式</title>
		
		
		<style type="text/css">
			
			.m-detail {
				color: #0e0e0e;
				font-size: 15px;
				line-height: 35px;				
			}
			
			.m-title {
				text-align:center;
			}
			
			.m-share{
				text-align: right;
				padding-right: 60px;
				padding-top: 20px;
			}
			.p2 {
				text-indent:2em;
				line-height:30px;
			}
			.p1 {
				font-weight:bold;
				font-size: 14px;
			}			
		</style>
		
		<script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>
		<script type="text/javascript">
			$().ready(function(){
				
			});
		</script>
		
	</head>

	<body>
		<body>
			<div class="title"></div>
			<div class="line_nav">
			<jsp:include page="../../head.jsp"></jsp:include>
			</div>
			
			
			
			
			
			
			
			
			
		<div id="box">

          	<jsp:include page="../../left.jsp"></jsp:include>
            
            
            <div class="right">
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="">参赛指南</a>&gt;&gt;<a href="">作品主题及形式</a></p>
                
                
                <h2 class="h_title">作品主题及形式</h2>
               
               
                <div class="p_cont">

	    <p class="p2">参赛作品的形式包括论文或报告、多媒体作品和软件工具。论文、报告类作品每篇在12000字以内（论文格式见竞赛官网），多媒体作品和软件工具的制作要符合题目的相关要求(具体要求见竞赛官网)。参赛者可选择以下指定题目参赛，也可利用国家科技平台提供的资源自拟题目参赛。 </p>
		 <p class="p1"> （一）论文、报告类</p>
		  <p class="p2">针对我国科技资源共享情况和各国家科技平台运行服务现状，充分利用平台各类数据、实物、仪器等资源，开展相关研究实践工作，并形成相关论文。</p>
		  
<p class="p1">（二）多媒体作品	 </p>
<p class="p2"> 1、国家科技平台网站首页设计	</p>
<p class="p2"> 根据大学生竞赛官方网站上公布的23家国家科技平台网站和资源，参赛者可以任选其中一家，设计平台网站首页。（具体要求见竞赛官网） 。	</p>
<p class="p2"> 2、平台宣传短片	</p>
<p class="p2"> 由参赛者为各国家科技基础条件平台制作一部视频或动画宣传短片，时间长度控制在3-10分钟。可以针对平台整体工作或某一项具体工作进行宣传。</p>
<p class="p2"> 3、动漫或视频制作 </p>
<p class="p2">根据国家科技平台的资源特点和运行服务情况，在相关平台提供的素材基础上，设计适合该平台宣传的动画、视频等。</p>

<p class="p1">（三）软件工具类 </p>
<p class="p2"> 根据相关平台提供的资源数据，开展基于地理信息、可视化或知识发现等方面的资源数据分析挖掘研究，形成相应的软件工具成果。</p>

<p class="p1">（四）自拟题目</p>
<p class="p2"> 根据国家科技平台相关资源，围绕深化科技资源开放共享与深度挖掘等方面，自拟参赛题目。参赛者可向国家科技平台提出申请（申请方式见官网），使用相关数据、仪器、文献、生物种质资源和网络计算环境等资源。参赛作品的形式包括论文或报告、多媒体作品和软件工具。</p>


                </div>
            </div>
          </div>				
			


			<jsp:include page="../../foot.jsp"></jsp:include>

		</body>
</html>
