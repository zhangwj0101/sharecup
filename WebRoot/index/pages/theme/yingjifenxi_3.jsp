<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 中国应急分析测试平台 中国应急分析测试平台数据库核心元数据导出工具</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">中国应急分析测试平台数据库核心元数据导出工具</span></a></p>
                
                
                <h2 class="h_title">  中国应急分析测试平台数据库核心元数据导出工具</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
							     <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 设计一款Windows平台应用软件，用于从中国应急分析测试平台网站数据库中导出核心元数据，
							     	并生成符合国家科技基础条件平台核心元数据规范的XML文档。</p>
							       <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 要求此软件提供可以自由定制SQL语句的配置文件</p>
							         <p>&nbsp;&nbsp;&nbsp;&nbsp;3.要求此软件生成的XML文件能够过滤掉各节点内部所有的html标记和Word文档专有格式标记。</p>
							           <p>&nbsp;&nbsp;&nbsp;&nbsp;4.要求此软件开源，并能够根据需要，进行版本升级。</p>
							           
							
							
							
							
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;<b> 数据：</b>
                          
                          <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 中国应急分析测试平台数据库信息（文件名：中国应急分析测试平台数据库信息.txt）</p>
                           	<p>&nbsp;&nbsp;&nbsp;&nbsp;2. 核心元数据格式（文件名：元数据标准.txt）</p>
                           	<p>&nbsp;&nbsp;&nbsp;&nbsp;3. 以前制作的核心元数据样例（文件名：ceas_metadata修改后.rar）</p>
                           	
                           	
                           	
                           	
                       	   <p>&nbsp;&nbsp;&nbsp;<b>考核要求</b>
						   <p>&nbsp;&nbsp;&nbsp;1. 采用 .net framework 3.5及以上版本技术，开发完成能够正常运行的中国应急分析测试平台核心元数据XML文件生成系统工具软件。【30分】</p>
						    <p>&nbsp;&nbsp;&nbsp;2. 提供可以自由定制SQL语句的配置文件。【20分】</p>
							 <p>&nbsp;&nbsp;&nbsp;3. 生成的XML文件能够过滤掉各节点内部所有的html标记和Word文档专有格式标记。 【30分】</p>
							  <p>&nbsp;&nbsp;&nbsp;4. 软件开源，并能够根据需要，进行版本升级。【20分】</p>
						   
						   
						   
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
