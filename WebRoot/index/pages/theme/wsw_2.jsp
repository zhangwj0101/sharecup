<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 国家微生物资源平台:工业微生物菌种资源产酶特性的研究 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">产酶微生物菌种资源的应用</span></a></p>
                
                
                <h2 class="h_title"> 产酶微生物菌种资源的应用</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;  
							<b> 要求</b></p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;  针对常用工业微生物产酶菌种，通过方案设计和实施，
					       测定分析其淀粉酶、蛋白酶、纤维素酶、木聚糖酶、果胶酶、
							   β-葡聚糖酶或脂肪酶的产酶特性、
					产酶基</p>
						<p>因及酶学特性。本竞赛提供10组菌种，参赛团队根据技术特长任选其中一组。参赛团队提出实验方案，经评审选定10个参赛团队并为其提供菌种，利用所提供菌种完成实验</p>
					
						<p>并提交研究报告。 </p>
						<p> &nbsp;&nbsp;&nbsp;&nbsp; <b> 数据：</b>
                   	      <p>&nbsp;&nbsp;&nbsp;&nbsp;1.	淀粉酶：地衣芽孢杆菌5株、枯草芽孢杆菌5株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;2.	淀粉酶：解淀粉芽孢杆菌10株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;3.	蛋白酶：枯草芽孢杆菌10株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;4.	蛋白酶：米曲霉10株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;5.	纤维素酶：黑曲霉5株，长柄木霉5株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;6.	木聚糖酶：黑曲霉10株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;7.	果胶酶：黑曲霉10株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;8.	β-葡聚糖酶：黑曲霉10株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;9.	β-葡聚糖酶：枯草芽孢杆菌10株；</p>
                           	   <p>&nbsp;&nbsp;&nbsp;&nbsp;10.	脂肪酶：黑曲霉5株、米曲霉5株。</p>
                           	
                           	
                           	
                       	   <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b></p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 研究实验方案设计(10分)</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 研究报告或论文(10分)</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;3. 菌种的产酶特性研究(60分)</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;4. 菌种的酶基因研究(10分)</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;5. 酶学特性研究(10分)</p>
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
