<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> CERN森林生态系统生物多样性评估 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> CERN森林生态系统生物多样性评估 </span></a></p>
                
                
                <h2 class="h_title"> CERN森林生态系统生物多样性评估 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						
						   <p><b>一、作品形式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;论文或报告</span>
						   </p>
						   
						   <p><b>二、作品要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;根据森林生态系统生物观测的每木调查，乔木、灌木、草本的物种组成等数据，采用群落生态学研究方法，分析不同区域森林生态系统群落组成特征、乔木、灌木、草本物种数量特征、物种多样性以及一定时间尺度上群落组成变化、演替情况。物种多样性可通过计算物种丰富度指数、Shannon-Wiener指数、Simpson指数、Pielou均匀度指数和生态优势度指数等来综合研究。
						   	</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;分析不同区域森林生态系统群落结构及生物多样性空间分异，揭示我国典型森林生态系统生物多样性空间分布变化，为生物多样性保护提供科学依据。
						   	</span>
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;
						   	森林植物群落乔木层植物种组成（FA03）、森林植物群落灌木层植物种组成（FA04）、森林植物群落草本层植物种组成（FA05）
						   	</span>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（1）研究意义：主要考察研究报告能否阐述研究的意义、国内外相关研究进展，满分15分；</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（2）研究方法：研究采用的方法是否合理，是否掌握分析方法的原理、适应范围等，满分20分；</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（3）研究结果：研究结果是否通过文字、图、表等方式得到合理、有效的展示，满分30分；</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（4）结果分析与讨论部分：是否能够对研究结果进行简明阐述、对比分析，对研究存在的问题进行合理解释，满分25分；</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;（5）参考文献：文献引用的是否规范，满分10分。</span>
						   </p>						   						   					　　
						
						   <p><b>五、评审标准：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;数据处理方法准确，得出的结论正确，依据充分合理，思维逻辑清楚，结论表达形式生动，图文并茂。</span>
						   	<br>
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
