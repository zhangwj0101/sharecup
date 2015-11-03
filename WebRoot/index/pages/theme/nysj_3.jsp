<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 农业科学数据共享中心: 面向渔港主要技术参数的数据挖掘 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">面向渔港主要技术参数的数据挖掘</span></a></p>
                
                
                <h2 class="h_title"> 面向渔港主要技术参数的数据挖掘 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
							      <p>&nbsp;&nbsp;&nbsp;&nbsp;在渔港规划建设与升级改造中，渔港的各个参数指标对等级评估有一定的影响。</p>
							      <p>&nbsp;&nbsp;&nbsp;&nbsp;编写软件，运用数据挖掘技术，分析渔港主要技术参数及性能数据库中，港口等级与避风等级、码头长度、护岸长度、防波堤长度、水域面积及陆域面积等因素之间的内部关联。
							      	因素关联图如图1所示。</p>
							      	<img src="<%=basePath %>index/pages/theme/nongyekexueshuju.jpg"/>
							      	<p> &nbsp;&nbsp;&nbsp;&nbsp;数据挖掘中所用软件及编程语言不作限制。</p>
							
							
							
							
							</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b> 渔港主要技术参数及性能数据（A04030361.mdb）</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
						      <p>&nbsp;&nbsp;&nbsp;&nbsp;1.对渔港主要技术参数及性能数据进行预处理，清除数据表中无用数据，例如数据不完整的记录，提取有效、可用数据，并转换成数据挖掘可用的格式，返回预处理后的渔港数据集合。【20分】</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;2.自行选择数据挖掘技术，例如关联分析、聚类分析，挖掘渔港数据集合中主要参数的关系，返回分析结果。【30分】</p>
							    <p>&nbsp;&nbsp;&nbsp;&nbsp;3.对结果分析，得出渔港等级评估与主要参数之间的关联，例如，港口等级为1级则避风等级不小于8级。对于所有可能的结果进行分析总结，得出结论。【30分】</p>
								 <p>&nbsp;&nbsp;&nbsp;&nbsp;4.可视化展示返回结果。【20分】</p>
							 
						   
						   
						   
						   
						   
						   
						   
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
