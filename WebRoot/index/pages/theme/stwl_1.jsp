<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 国家生态系统观测研究网络:  我国光合有效辐射计算及空间分布特征分析 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">我国光合有效辐射计算及空间分布特征分析</span></a></p>
                
                
                <h2 class="h_title">我国光合有效辐射计算及空间分布特征分析</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;	我国国家气象台站通常没有光合有效辐射的观测数据，为了得到全国尺度的光合有效辐射数据，一般基于有限的生态站点观测数据，
								建立光合有效辐射与其他要素的关系式，采用间接推断的方式得到全国尺度的光合有效辐射数据。</p>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;	本题目旨在通过文献搜索学习，确定光合有效辐射的计算方法，并结合给定的数据资源进行验证，
									进而计算得到完整的光合有效辐射时间序列，并分析其空间分布特征。</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;<b> 数据：</b>
                       	  <p>1. 各要素数据CERN台站：台站、年、月、日、光合有效辐射、总辐射、大气压、相对湿度 </p>
	

                           	<p>2. 元数据CERN台站及数据集说明文档（台站经纬度坐标、数据要素单位及缺失值代码等说明）</p>
	

                           	
                           	
                           	
                           	
                           	<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 原始数据质量控制【10分】
	根据相关文献确定原始数据的质量控制标准，并给出各要素有效数据占总数据的百分比。</p>
						   <p>注意：只需要对自己计算所需要的数据要素做质量控制。
						     </p>
						   <p>提交文件（1原始数据质量控制.doc），说明质量控制的步骤，及每个步骤的作用和文献出处，并给出各要素有效数据百分比。</p>
						   <p>注意：在文档最后附上计算过程的源代码（不限语言）。 </p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 光合有效辐射计算方法及其验证【20分】</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;	通过文献搜索，确定光合有效辐射的计算方法，并利用给定的数据资源进行验证，给出最终的验证效果。</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;提交文件（2计算方法及验证.doc）包括：计算方法的公式、描述及出处，验证方法的描述及出处，以及验证的结果表，应包括R2、RMSE等基本的拟合评价指标。注意：在文档最后附上计算过程的源代码（不限语言）。</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;光合有效辐射及光合有效系数的计算【20分】</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;光合有效辐射与总辐射的比例称之为光合有效系数。结合确定的光合有效辐射计算方法，以及给定的数据资源，计算光合有效系数；并将缺失或剔除的光合有效辐射数据补全，得到完整的光合有效辐射时间序列；进而计算得到各个站点年尺度的光合有效辐射和光合有效系数。注意：在文档最后附上计算过程的源代码（不限语言）。</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;提交文件（3计算结果.xls）包括两个表单，分别对应日尺度和年尺度。日尺度表单至少应包括下面几个字段：站点、年、月、日、总辐射、光合有效辐射。年尺度表单至少应包括：站点、年、总辐射、光合有效辐射。</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;4. 光合有效辐射及光合有效系数的空间分布（年尺度）【30分】</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;分析我国光合有效系数和光合有效辐射的空间分布特征。</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;提交文件（4空间分布特征.doc）包括图表及相应说明：光合有效系数的空间分布图，光合有效辐射的空间分布图。</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;5. 光合有效系数及光合有效辐射空间分布特征的原因探析【20分】</p>
						   <P>&nbsp;&nbsp;&nbsp;&nbsp;结合自己的计算结果，查阅文献，分析原因。</P>
						    <P>&nbsp;&nbsp;&nbsp;&nbsp;提交文件（5空间分布特征原因探析.doc）为分析结果的文字表述。</P>
						   
						   
						   
						   
						   
						   
						   
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
