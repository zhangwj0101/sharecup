<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> II型糖尿病视网膜病变的关联因素分析</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 基于红外相机调查数据的XX保护区保护现状分析与保护对策研究区 </span></a></p>
                
                
                <h2 class="h_title"> II型糖尿病视网膜病变的关联因素分析 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						
						   <p><b>一、作品形式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;论文或报告</span>
						   </p>
						   
						   <p><b>二、背景知识：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;糖尿病视网膜病变(diabeticretinopathy, DR)是糖尿病高度特异性的微血管并发症，在20-74岁成人新发失明病例中，DR是最常见的病因。现有的研究进展已经注意到DR的主要关联因素包括糖尿病病程、高血糖、高血压和血脂异常，其他相关因素还包括妊娠和慢性肾脏病等。II型糖尿病患者也是其他眼部疾病早发的高危人群，这些眼病包括白内障、青光眼、视网膜血管阻塞及缺血性视神经病变等。应用数据挖掘方法对糖尿病患者的住院数据进行分析，旨在发现糖尿病视网膜病变的关联因素和关联规则，结论有助于早期诊断和优化诊断流程。
							</span>
						   </p>							
						   <p><b>三、题目要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;应用数据挖掘方法对糖尿病患者的住院数据进行分析与综述，发现糖尿病视网膜病变的关联因素和关联规则。
								&nbsp;&nbsp;<br>要求1：数据处理。对数据库数据进行整理，获得可以用于分析的数据。
								&nbsp;&nbsp;<br>要求2：分析相关因素指标与DR的关系，挖掘出有意义的指标。
								&nbsp;&nbsp;<br>要求3：探索DR与不同因素检查指标联合规则。
								&nbsp;&nbsp;<br>要求4：利用上述指标构建糖尿病视网膜病变的关联因素和关联规则。
							
							</span>
						   </p>							
						   
						   <p><b>四、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;糖尿病数据集
							（http://124.207.187.26:8080/diagnosis/index.jsp）
							</span>
						   </p>
						
						   <p><b>五、考核要求及分值：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. 数据整理：是否得到可用于统计学处理的数据。【20分】</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. 各指标与糖尿病视网膜病变的关系：分析各项不同因素检查指标与糖尿病视网膜病变的关系，挖掘出可用于进一步分析的指标【35分】</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3. 构建模型：对有意义的指标进行综合分析，尝试建立不同的关联模型和关联规则，有助于DR早期诊断和优化诊断流程。【35分】  </span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4. 方法：统计学方法应用得当。【10分】</span>
						   </p>						   						   					　　
						   <p><b>六、评审原则和标准：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;具体评分根据参赛者返回的结果质量。</span> 						   							   	
						   </p>						   						   					　　
						   <p><b>七、竞赛题目联系方式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;邮箱lcyx301@126.com，邮件题目请标明“共享杯竞赛”。</span>
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
