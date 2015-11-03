<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title>相关要求及注意事项</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="">参赛指南</a>&gt;&gt;<a href="">相关要求及注意事项</a></p>
                
                
                <h2 class="h_title">相关要求及注意事项</h2>
               
               
                <div class="p_cont">

	    <p class="p2">1、参赛作品主要工作需在竞赛期间完成，不得以其他时期成果或作品作为参赛作品申报。</p>
	    <p class="p2">2、参赛作品必须以竞赛官网发布的科技资源作为作品完成的关键要素，或者作品有利于促进国家科技平台科技资源共享服务工作。</p>
	    <p class="p2">3、参赛团队或个人可根据需要邀请1-2名指导教师。不可抄袭、盗用他人成果或作品。</p>
	    <p class="p2">4、23个国家科技平台无偿为参赛者提供参赛所需要的资源，特殊情况不能提供的需详细向参赛者说明情况。</p>
	    <p class="p2">5、涉密科技资源，不在本次大学生竞赛活动所提供的资源范围。</p>
	    <p class="p2">6、竞赛组委会和各国家科技平台享有参赛作品和成果的使用权，并选择优秀作品进行集中宣传。</p>
    		 


                </div>
            </div>
          </div>				
			


			<jsp:include page="../../foot.jsp"></jsp:include>

		</body>
</html>
