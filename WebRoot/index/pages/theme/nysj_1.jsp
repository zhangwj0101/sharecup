<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title>农业科学数据共享中心:农业科学数据集间的语义关联构建与展示工具</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href="">农业科学数据集间的语义关联构建与展示工具</a></p>
                
                
                <h2 class="h_title"> 农业科学数据集间的语义关联构建与展示工具</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>借鉴关联数据（Linked Data）的理念和技术方法，建立农业科学数据共享平台中农业科技机构数据库、农业科技人才数据库、国内农业科研项目数据库和中文科技文摘数据库之间的语义关联模型，为这几种不同类型科学数据构建规范、丰富的语义关联关系，
							    并以简洁、直观的可视化方式展示这些语义关联关系。编写程序语言不限。</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b>
                       	  <p>&nbsp;&nbsp;&nbsp;&nbsp;1.农业科技机构数据库（文件名：abstract_cn.sql）</p>
                           	  <p>&nbsp;&nbsp;&nbsp;&nbsp;2.农业科技人才数据库（文件名：AgriScientist.sql）</p>
                           	  <p>&nbsp;&nbsp;&nbsp;&nbsp;3.国内农业科研项目数据库（文件名：AgriProject.sql）</p>
                           	  <p>&nbsp;&nbsp;&nbsp;&nbsp;4.中文科技文摘数据库（文件名：AgriAbstract.sql）</p>
                           	
                           	
                           	
                           	
                           	
                           	
                           	</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求</b>
						      <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 采用关联数据的技术方法，建立农业科技机构与农业科技人才数据库之间规范的语义关联模型和关系。【20分】</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 采用关联数据的技术方法，建立农业科技机构、农业科技人才与国内农业科研项目数据库之间规范的语义关联模型和关系。【20分】</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;3. 采用关联数据的技术方法，建立农业科技机构、农业科技人才与中文科技文摘数据库之间规范的语义关联模型和关系。【20分】</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;4. 采用关联数据的技术方法，建立国内农业科研项目与中文科技文摘数据库之间规范的语义关联模型和关系。【20分】</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;5. 提供可视化的用户操作界面，直观地展示农业科技机构、科技人才、科研项目和科技文摘等不同类型资源间的语义关联关系。【20分】</p>
						   
						   
						   
						   
						   
						   </p>
                           <img src="">
						</div>
						
						<div class="m-share">
							<a style="color:blue;" <s:if test="%{#session.user==null}">href="<%=basePath %>index/pageIndex_region.action"</s:if><s:else>href="#"</s:else> >个人团队报名入口</a>
							<br />
							<a style="color:blue;" <s:if test="%{#session.user==null}">href="javascript:void(0);" class="h-s"</s:if><s:else>href="#"</s:else> >单位组织报名入口</a>
						</div>
						
					</div>




                </div>
            </div>
          </div>				
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<div class="content" style="display:none;">
				<p style="margin-bottom: 20px;">
					<span style="color: #a3a4a4">当前位置：<a href="<%=basePath %>index/pageIndex.action"
						style="color: #a3a4a4; text-decoration: none;">首页 > </a>
					</span>
					<a href="<%=basePath %>index/pageIndex_theme.action" style="color: #5cabe1; text-decoration: none;">竞赛主题</a>
				</p>
				<!-- left start -->
				<div class="left">
				
				
					<div class="m-detail">
						
						<div class="m-title"><h3>国家微生物资源平台: 平台菌种资源科技文献检索数据库</h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>针对菌种数据库的17万种共享菌株，根据菌种编号建立中外科技文献的自动检索体系，形成数据库，完善平台菌种的科技文献信息。</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b>平台微生物菌种数据库，平台中外科技文献数据库、文摘</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>成果形式：</b>论文、软件</p>
						</div>
						
						<div class="m-share">
							<a href="<%=basePath %>index/pageIndex_region.action">报名</a>
						</div>
						
					</div>
				
				
				</div>
				<!-- left end -->
				
				
				
				
				
				
				
				
				
				
				<div class="right">
					<jsp:include page="../../left.jsp"></jsp:include>
					<div class="question">
						<p class="p1">
							文件下载
						</p>
						<div class="q">
							<p>
								<a href="">竞赛主题科技信息处理相关技术的研</a>
								<br />
								<a href="">竞赛主题科技信息处理相关技术的研</a>
								<br />
								<a href="">竞赛主题科技信息处理相关技术的研</a>
								<br />
								<a href="">竞赛主题科技信息处理相关技术的研</a>
								<br />
								<a href="">竞赛主题科技信息处理相关技术的研</a>
							</p>
							<p>
								<a href="">竞赛主题科技信息处理相关技术的研</a>
							</p>
							<p>
								<a href="">竞赛主题科技信息处理相关技术的研</a>
							</p>
							<p>
								<a href="">竞赛主题科技信息处理相关技术的研</a>
							</p>
							<p>
								<br />
							</p>
						</div>

					</div>
					<div>
						<jsp:include page="../../depart.jsp"></jsp:include>

					</div>


				</div>
			</div>


			<jsp:include page="../../foot.jsp"></jsp:include>

		</body>
</html>
