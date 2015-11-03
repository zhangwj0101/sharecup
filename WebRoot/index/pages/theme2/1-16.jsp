<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 材料腐蚀区划分级及展示研究 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 材料腐蚀区划分级及展示研究 </span></a></p>
                
                
                <h2 class="h_title"> 材料腐蚀区划分级及展示研究 </h2>
               
               
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
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1）基于材料腐蚀平台腐蚀数据及环境数据，按照相关的国际标准和国家标准，开展我国典型区域腐蚀分级研究；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2）通过数据分析，建立数据缺失或稀疏数据情况下的处理模型；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3）通过数据和建模分析，研究材料腐蚀区划分级的可视化展示方法。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4）论文报告必须是原创性结果、需要标注数据来源的平台名称。</span><br>
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1）材料腐蚀平台典型材料腐蚀数据及环境数据（可根据具体要开展的研究范围和要求，从材料腐蚀平台门户网站www.ecorr.org下载（数据检索页链接地址http://www.ecorr.org/ecorr/data-share-search.html），具体要求也可联系材料腐蚀平台数据共享部协助解决）。电话：010-82387968；QQ：815397784；邮箱：guojing733@163.com，邮寄地址：北京市海淀区学院路30号方兴大厦1103；邮编：100083</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2）区划分级目标区域的气象环境数据可通过气象科学数据共享平台获取，也可以联系材料腐蚀平台协助解决。电话：010-82387968；QQ：815397784；邮箱：guojing733@163.com，邮寄地址：北京市海淀区学院路30号方兴大厦1103；邮编：100083</span><br>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. 对国家材料环境腐蚀平台数据库（腐蚀数据及环境数据等）的利用效果 20分</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. 对数据的综合分析结果，数据缺失或稀疏数据情况下的处理模型的建立 30分</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3. 通过数据分析，建立数据缺失或稀疏数据情况下的处理模型 30分 </span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4. 出具的报告符合写作的规范，标题，内容，提要，关键词，正文，语言，注释和参考文献都比较规范 10分</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;5. 综合评分，根据作品的观点，创新点，现实意义及工作量 10分</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>						   							   							   							   	
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
