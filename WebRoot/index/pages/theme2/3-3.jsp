<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 基于NI-LabView的可视化计量测试软件 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 基于NI-LabView的可视化计量测试软件 </span></a></p>
                
                
                <h2 class="h_title"> 基于NI-LabView的可视化计量测试软件 </h2>
               
               
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
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;LabVIEW（Laboratory Virtual Instrument Engineering Workbench）是一种用图标代替文本行创建应用程序的图形化编程语言。LabVIEW提供很多外观与传统仪器（如示波器、万用表）类似的控件，可用来方便地创建用户界面。使用图标和连线，可以通过编程对前面板上的对象进行控制。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;题目主题：使用LabVIEW语言，针对现有计量基准、标准测量装置进行软件编程。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;软件平台：LabVIEW, LabWindows/CVI 等主流虚拟仪器设计软件。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;程序设计：软件界面要求友好、交互、生动、形象。编程构架与程序代码要求符合软件规范，并内嵌相应的说明与帮助文档。全部程序只能使用同一开发软件，不能使用任何第三方模块（例如 DLL， EXE，MathScript Node 和 Formula Node 等）。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;作品提交：程序源代码，程序说明文档（包含立意创新，功能介绍，操作流程，程序亮点等）。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;具体要求请参见考核要求及打分标准。</span><br>
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. 计量基准（文件名：计量基准.xls）</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. 计量标准（文件名：计量标准.xls）</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3. 提供国家计量基标准资源共享平台共建单位相关专业计量基标准检定校准实地观摩机会。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4. 提供软件工作环境。</span><br>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. 可视化与友好：软件界面要求友好、交互、生动、形象；【20分】</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. 实用性与功能性：是否能真正用于实际工作，准确、可靠、稳定；【30分】</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3. 编程技术：技术的阐述概念，程序框架布局等概念；【25分】</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4. 范性与说明文档：程序说明 文档的清晰与完整性；【25分】</span><br>					   							   							   							   	
						   </p>						   						   					　　
						
						   <p><b>五、评审原则和标准：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;具体评分参照考核要求，根据参赛者返回的结果质量以及可视化效果而定。</span><br>
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
