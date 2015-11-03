<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title>人口与健康学科学数据共享平台: 国人心脑血管病筛查与评估工具</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">国人心脑血管病筛查与评估工具</span></a></p>
                
                
                <h2 class="h_title"> 国人心脑血管病筛查与评估工具</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
							      编写软件，通过分析数据库数据，获取各省市初筛档案危险分级所占该省市人口比例，
							      并将获取到的数据在地图上进行展示，使危险分级分布展示更为清晰明了。 
							
							  </p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b>
                   	      <p>&nbsp;&nbsp;&nbsp;&nbsp;
                           	   	数据库 Stroke_DB_Count
                          <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 档案表（文件名：Archives）</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 档案状态表（文件名：ArchivesState）</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;3. 初筛信息表（文件名：DangerFactor）</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;4. 既往病史表（文件名：StrokeFollowUp）</p>
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;5. 行政区划表（文件名：GB_Native）</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
				          <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 编程环境
开发平台Visual Studio 2010，数据库 SqlServer2008，系统构架 ASP.NET，开发语言C# ，框架采用 .NET Framework 4.0 ，B/S架构
</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 脑卒中筛查数据库数据分析</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;2.1.条件检索【10分】
    系统应包含根据性别、队列、地区、年龄（也可根据任意年龄段）、受教育程度、支付方式、婚姻状况、危险分级、所得疾病（高血压、糖尿病、血脂异常等相关疾病）等因素进行检索的功能。
</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;2.2人口学信息分析【15分】
        根据条件检索所得结果可对性别、年龄等人口学信息因素进行统计，统计结果应包含该因素所占比例及相应档案数，结果展示应包含数据表、统计图（柱状图、饼图、折线图等）。
</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;3. 档案患病率分析【15分】
根据条件检索所得结果可对各疾病患病率等因素进行统计，统计结果应包含该因素所占比例及相应档案数，结果展示应包含数据表、统计图（柱状图、饼图、折线图等）。
</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;4.档案危险分级分析【25分】</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;根据条件检索所得结果可对档案所属危险分级进行统计，统计结果应使用地图展示</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;a. 展示实现： 地图展示采用Javascript API 。</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;b. 展示内容：各省档案危险分级分布情况。</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;c. 展示效果：统计全国各省危险分级情况 </p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;若脑卒中群所占比例>3%，则该省地图显示为红色；</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;若所占比例>1%且=<3% ，则该省地图显示为黄色；</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;若所占比例=<1%，则该省地图显示为绿色；</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;当鼠标停留在某省范围时，显示该省筛查总档案数、各分级所占比例及其对应具体档案数。   </p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;当鼠标点击某市范围时，使用弹窗显示该市筛查总档案数、各分级所占比例及其对应具体档案数。</p>
						   
						   
						   
						   
						   
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
