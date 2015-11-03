<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 地学数据管理、挖掘分析与可视化工具 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 地学数据管理、挖掘分析与可视化工具 </span></a></p>
                
                
                <h2 class="h_title"> 地学数据管理、挖掘分析与可视化工具 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						
						   <p><b>一、作品形式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;软件工具</span>
						   </p>
						   
						   <p><b>二、作品要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（1）选择地球科学数据其中的一类，如基础地理空间数据、遥感影像、资源环境数据、水文水资源数据、地球物理数据、古环境数据、近岸海洋数据、社会经济可持续发展数据、空间物理与天文学数据等，研发数据管理、查询检索、挖掘分析或可视化展示的软件工具。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（2）软件工具功能可以是：数据管理、查询检索、挖掘分析或可视化展示的一类功能也可以是若干功能的组合。能够有效解决地球系统科学数据共享平台数据资源多源、异构、海量的特性，方便管理、优化查询检索、深度挖掘与形象的可视化展示。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（3）软件工具性能要求：操作简便、界面友好、响应速度快。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（4）软件结构、编程语言不限，但最好是B/S系统，最好是Java编程。</span><br>
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;社会经济、人口数据（分省、分县）（2000-2010）;</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;地表过程与人地关系（典型区域）数据;</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;古气候古环境数据;</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;自然灾害研究数据;</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;极地雪龙号航迹路径数据集（首次考察-至今）；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;极地海洋学相关数据集(2013年)；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;极地地球物理学相关数据集（2013年）；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;极地生物学微生物数据集（2013年）;</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;珠峰站气象观测数据</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;慕士塔格气象数据集</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;纳木错气象数据集</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;阿里荒漠环境综合观测研究站气象数据集</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;藏东南站气象数据集</span><br>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（1）	软件工具创新性，25分</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（2）	软件工具实用性，25分</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（3）	软件工具稳定性，15分</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（4）	软件工具性能，15分</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（5）	软件工具界面友好性，10分</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（6）	配套操作手册，10分</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;</span><br>					   							   							   							   	
						   </p>						   						   					　　
						   						   
						</div>
						
						<div class="m-share" style="display:none;">
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
