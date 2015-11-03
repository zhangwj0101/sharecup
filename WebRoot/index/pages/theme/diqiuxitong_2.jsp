<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 地球系统科学数据共享中心: 长三角地区社会经济发展统计分析工具</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href="">长三角地区社会经济发展统计分析工具</a></p>
                
                
                <h2 class="h_title"> 长三角地区社会经济发展统计分析工具</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
							         <p>设计开发小软件可以对提供的统计年鉴进行简单的条件查询，并可根据需求进行时间序列分析、地区对比分析、自定义指标分析，生成统计报表等。也可侧重对设计开发对统计数据可视化展现的小软件，突破传统图标的思维限制，充分发挥想象力，设计呈现方式揭示数据中的复杂信息，帮助人们通过最直观的方式，呈现枯燥数据所蕴含的实质信息。
具体要求如下，所用的开发环境和形式不做限制。
</p>
							         <p>1. 该题目适合： 对统计数据使用、分析，统计数据的可视化表达有想法，具有软件开发基础；</p>
							         <p>2、 组队要求：1-4人组成团队为单位参赛，指导老师0-2名；</p>
							         <p>3、 选题说明：根据上述内容自由选题； </p>
							         <p>1) 突出对现有统计年鉴数据的整合和查询、分析需求，作品的实现方式不限，包括但不限于模型、脚本、主流软件的扩展工具等多种方式的结合来实现；</p>
							         <p>2) 举例：数据分析效果可以参考cnki中国经济社会发展统计数据库（http://tongji.cnki.net/kns55/Dig/InternationalData.aspx）；数据可视化表达可以参照网络上开源的数据可视化引擎来帮助完成工作，如：many eyes，OpenHeartMap等。</p>
							         <p>4、 使用软件：操作系统，开发平台，使用语言均不限；</p>
							         <p> 提交内容：</p>
							         <p>1) 提交原代码、可执行的应用程序及相应的dll库；</p>
							         <p>2) 如有自定义脚本工具，需提交脚本源代码文件；</p>
							         <p>3) 作品使用说明（包含操作流程、配置部署等）；</p>
							         <p>4) 作品简介（不超过4页，五号宋体字。要求包括设计思想、主要功能、特点及展望）；</p>
							         <p>5) 人员信息（word文档格式。作品名称、作者单位（学校、学院）、小组成员、指导老师。不同单位人员信息请单独备注说明）。</p>
							         
							
							
							
							
							
							
							</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp; <b> 数据：</b>
                       	  <p>1.	长三角地区社会经济统计数据集（1980s-2010）：该数据包含了长江三角洲区域内江苏省、浙江省、上海市1980s-2010年的社会经济统计年鉴指标。格式为Excel。（数据提供网站：长江三角洲科学数据共享平台http://nnu.geodata.cn/）</p>
                           	   <p>2.	江苏省市县经济统计数据集（1990-2010年）：该数据包含了江苏省13个地级市的社会经济统计年鉴指标。格式为Excel。（数据提供网站：长江三角洲科学数据共享平台http://nnu.geodata.cn/）</p>
                           	    <p>3.	长三角地区基础地理数据：该数据包含了长江三角洲地区内江苏省、上海市、浙江省的基础地理背景数据，用于提供可视化分析底图。格式为Shapefile。（数据提供网站：长江三角洲科学数据共享平台http://nnu.geodata.cn/）</p>
                           	     <p>4.	可视化效果介绍文档。</p>
                           	     
                           	      
                           	
                           	
                           	
                           	
                           	
                           	
                           	</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
						      <p>&nbsp;&nbsp;&nbsp;&nbsp;1.	将提供的统计年鉴数据入库，并准确无误的对数据进行查询检索统计。【30分】</p>
							    <p>&nbsp;&nbsp;&nbsp;&nbsp;2.进行合理的资源挖掘分析（时间序列分析、地区社会经济信息挖掘等），并得出正确的结果或结论。【30分】</p>
								  <p>&nbsp;&nbsp;&nbsp;&nbsp;3.	对资源挖掘结果进行数据可视化展现，突破传统图标的思维限制，充分发挥想象力，设计别具一格的呈现方式，揭示枯燥数据中的实质信息。具体可以查找网络上开源的数据可视化引擎来帮助完成工作。如：many eyes，OpenHeartMap等。【20分】</p>
								    <p>&nbsp;&nbsp;&nbsp;&nbsp;4.程序代码书写规范，注释合理，程序界面布局美观。【20分】</p>
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
