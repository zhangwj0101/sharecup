<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 基于计量基标准资源共享平台深度数据挖掘方案 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 基于计量基标准资源共享平台深度数据挖掘方案 </span></a></p>
                
                
                <h2 class="h_title"> 基于计量基标准资源共享平台深度数据挖掘方案 </h2>
               
               
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
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;在研究现有国家计量基标准资源共享平台资源数据库的架构及数据内容的基础上，依据国内外基础条件平台发展趋势和国家重大需求的特点，提供可行性的数据挖掘方案。
						   	</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;以下提出几个方向及思路供参赛者选择，参赛者也可选择其他内容数据库挖据。
						   	</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1、数据库：国际互认校准测量能力（CMC）
						   	</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;根据提供的国际互认校准测量能力（CMC）数据库资源，以及查询某行业领域的年度工作统计报告，对比分析国内外CMC能力的提升速度、水平、方向，是否满足行业发展需求，提出相应的数据挖掘方案。
						   	</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2、数据库：CMC.xls
						   	</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;根据提供的国际互认校准测量能力（CMC）数据库资源，查询某行业关键标准等相关资料，对比cmc与其对应支撑行业领域的能力。分析CMC在某领域中，重要指标、可取消指标等，通过数据挖掘，从大量的数据中通过算法搜索隐藏于其中的信息，解决CMC指标发展方向的问题。
						   	</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;具体要求请参见考核要求及打分标准。
						   	</span>
						   	<br>						   							   							   							   							   							   	
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. 计量基准（文件名：计量基准.xls）</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. 计量标准（文件名：计量标准.xls）</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3. 国际互认校准测量能力（CMC）（文件名：国际互认校准测量能力.xls）</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4. 实验室检测能力（文件名：检测能力.xls）</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;5. 实验室校准能力（文件名：校准能力.xls）</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;6. 大型科学仪器（文件名：大型科学仪器.xls）</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;7. 政策法规（文件名：政策法规.xls）</span><br>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1.可行性：论文提供的方案需具备较强可操作性；【40分】</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2.独创性：作品应具有较强的新颖性、科学性和先进性；【40分】</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3.作品形式：符合论文格式要求，完整、严谨；【20分】 </span>
						   	<br>
						   	<b>五、评审原则和标准：</b>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;根据总体论文报告统一要求及考核要求及分值评审。</span>				   							   							   							   	
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
