<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title>人口与健康学科学数据共享平台: 方剂中药关系可视化分析工具</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">方剂中药关系可视化分析工具</span></a></p>
                
                
                <h2 class="h_title">方剂中药关系可视化分析工具</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
							      <p>&nbsp;&nbsp;&nbsp;&nbsp;主题是设计一种可以对方剂、主治、功效、中药等相互关系进行分析的可视化分析工具，并可以实际分析方剂数据中的方剂与主治的关系、方剂与方剂的关系、
							      中药与中药之间的关系，可以显示并导出分析结果，并以图示的方式表现出来。</p>
							      <p>&nbsp;&nbsp;&nbsp;&nbsp;编写所用的程序语言不作限制，可以与现在的主流数据库挂接。</p>
							
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b>
                   	      <p>&nbsp;&nbsp;&nbsp;&nbsp;
                           	   	中国方剂数据库中包含“咳嗽、中风、呕吐、头痛、发热、失眠、
                   	   	  腹痛”七种疾病的治疗方剂的方名、组成、功效、主治相关数据，共一万余条。</p>
                           	
                           	
                           	<p>&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
					      <p>&nbsp;&nbsp;&nbsp;1.完成对方剂、主治、功效、中药等相互关系进行分析的可视化分析工具，可以利用成熟数据挖掘中的常用的关联关系分析及聚类分析方法，更建议使用一些数据挖掘中比较少用的新兴的其他方法，分析数据之间的关系。尤其是解决主治和中药这种半结构化的数据挖掘问题。【40分】</p>
							  <p>&nbsp;&nbsp;&nbsp;2.工具具有较好的使用性，技术运用准确、恰当。【20分】</p>
							  <p>&nbsp;&nbsp;&nbsp;3.分析结果符合基本常识，准确程度高。【10分】</p>
							  <p>&nbsp;&nbsp;&nbsp;4.结果的图示化表现形式，例如可以以中药或方剂为节点，进行网状图形表示。也可以使用其它更能体现方剂之间或中药之间关系的其它图示表现结果。【20分】</p>
							  <p>&nbsp;&nbsp;&nbsp;5.可以很好的展现各项主题之间的关系密切的程度，关系最为密切的方剂和中药、主治可以突出表现。【10分】</p>
						   
						   
						   
						   
						   
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
