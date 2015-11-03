<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 国家农作物种质资源平台: 基于图像识别的农作物种子数粒软件 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href="">国家微生物资源平台: 平台菌种资源科技文献检索数据库</a></p>
                
                
                <h2 class="h_title">国家农作物种质资源平台: 基于图像识别的农作物种子数粒软件 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;<b>要求：</b>
							     <p>&nbsp;&nbsp;&nbsp;&nbsp;为计算种子千粒重或百粒重而进行数粒，是农作物种质资源鉴定评价的一项基本工作，但人工数粒比较费时且费力，而购置专门的数粒设备则需要花费大量经费。因此，通过拍摄种子图像，
							     	利用计算机软件对图像进行识别，自动计算出种子粒数，无疑是既简便又经济的方法之一。程序能对单张种子照片进行识别，给出照片中种子的粒数。</p>
							     <p> 本题要求：开发基于图像识别，适用于Windows环境，具有良好用户界面，操作简便的农作物种子数粒程序，
							     	并提供相关原代码、可执行文件和文档。</p>
							
							
							
							</p>
                           <p>&nbsp;&nbsp;<b> 数据：</b>
                           	
                           	<p>&nbsp;&nbsp;&nbsp;&nbsp;平台提供的小麦、玉米、大麦、菜豆、豌豆、辣椒、茄子、苋菜、芥菜、南瓜、西瓜等农作物共18幅图像。如需更多农作物种子图像，请与国家农作物种质资源平台办公室联系，010-62156875，office@cgris.org。
                           	注：为展现农作物品种的多样性，某些图像混合了同类作物的不同品种资源。</p>
                           	
                           	
                           	
                           	</p>
                           <p>&nbsp;&nbsp;<b>考核要求：</b>
						       <p>&nbsp;&nbsp;&nbsp;&nbsp;1、提交程序原代码；</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;2、生成并提交可于Windows XP或Windows 7环境下运行的可执行文件；</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;3、程序具有友好的用户操作界面；</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;4、程序能自动识别用户提交的jpg格式种子图像，并给出图像中种子的粒数；</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;5、提交程序说明文档（算法说明）及使用说明；</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;6、开发语言不限。</p>
						 </p>
						 
						 
             <p>&nbsp;&nbsp;<b>评审原则和标准：</b>
						     <p>&nbsp;&nbsp;&nbsp;&nbsp;国家农作物种质资源平台将组织专家对所提交的程序及相关附件进行统一评判。基准分100分，使用5幅代表各类型种子的标准图像分别对程序进行测试，累加误差的绝对值，以100减去此值，则为得分。同时，用户界面不友好减5分；无文档减5分；程序为绿色软件加2分；有其他创新附加功能，如种子长宽比计算功能等，经专家认定，每一功能加3分。</p>
						 </p>
						 
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
