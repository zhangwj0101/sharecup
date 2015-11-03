<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title>人口与健康学科学数据共享平台: 面向肿瘤个体化用药的文献挖掘</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">面向肿瘤个体化用药的文献挖掘</span></a></p>
                
                
                <h2 class="h_title">面向肿瘤个体化用药的文献挖掘</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>背景介绍：</b>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;随着基因组学的发展，科学家发现众多癌症起源于正常组织在物理或化学致癌物的诱导下基因组发生的变异，即基因在结构上发生碱基对的组成或排列顺序的改变，因</p>
						<p>而改变了基因原来的表达状态。所以和传统的化疗、放疗等治疗方法相比，针对肿瘤信号通路上的关键基因进行治疗的“靶向药物”具有更显著的疗效。
						 </p>
						<p> 靶向药物(Targeted Medicine)是目前最先进的用于治疗癌症的药物，它通过与癌症发生、肿瘤生长所必需的特定分子靶点的作用来阻止癌细胞的生长。与常规化疗药物最大的不</p>
						<p>同在于，靶向药物是针对肿瘤基因开发的，它能够识别肿瘤细胞上由肿瘤细胞特有的基因所决定的特征性位点，通过与之结合（或类似的其他机制），阻断肿瘤细胞内控制细</p>
						<p>胞生长、

增殖的信号传导通路，从而杀灭肿瘤细胞、阻止其增殖，不仅效果好，而且副 作用要比常规的化疗方法小得多。 </p>
						<p>个体化用药，顾名思义就是药物治疗“因人而异”、“量体裁衣”，在充分考虑每个病人的遗传因素（即药物代谢基因类型）、性别、年龄、体重、生理病理特征以及正在服用的</p>
						<p>其它药物等综合情况的基础上制定安全、合理、有效、经济的药物治疗方案。靶向药物治疗中由于不同个体基因变异的特异性决定了药物治疗的敏感性和随之可能产生的抗</p>
						<p>药性，如果不从基因型角度予以检测判定，将会造成无效用药。因此，针对靶向药物治疗的个体化用药具有非常大的临床意义和社会意义。 </p>　
						<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
					      <p>&nbsp;&nbsp;&nbsp;&nbsp;编写软件，通过分析文献，挖掘出不同肿瘤类型(Cancer)、抗癌药物(Drug)、基因(Gene)之间的关联（简称CDG关系）。针对肿瘤靶向药物的个体化治疗可以理解为分析出不同肿瘤类型、
							     	靶向抗癌药物及靶向基因之间的关联。因素关联图如图1所示。</p>
							     <img src="<%=basePath %>index/pages/theme/img/rtjk_zl.jpg.jpg"/>
							
							  </p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b>
                   	      <p>
                   	   	  <p>&nbsp;&nbsp;&nbsp;&nbsp; 1.	抗癌药物名称列表（文件名：DrugName.txt）</p>
                           	   	 <p>&nbsp;&nbsp;&nbsp;&nbsp; 2.	基因名称列表（文件名：All_Data.gene_info）</p>
                           	   	 <p>&nbsp;&nbsp;&nbsp;&nbsp; 3.	肿瘤类型列表（文件名：CancerName.txt）</p>
                           	   	 <p>&nbsp;&nbsp;&nbsp;&nbsp; 4.	PubMed文献：MEDLINE格式文件（文件名：pubmed_result.txt）</p>
                           	   	 
                           	
                           	
                           	<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
					      <p>&nbsp;&nbsp;&nbsp;&nbsp;1.采用共现法，实现在文献摘要（包含文献标题）水平的CDG关系挖掘，返回挖掘到的文献，并标注相关关键词。【20分】</p>
							 <p>&nbsp;&nbsp;&nbsp;&nbsp;2.采用共现法，实现在文献标题水平的CDG关系挖掘，返回挖掘到的文献，并标注相关关键词。【20分】</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;3.	采用共现法，实现在句子（包含所有出现在摘要及标题中的句子）水平的CDG关系挖掘，返回挖掘到的文献，并标注相关关键词及句子。【20分】</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;4.根据前面三道题的结果，挖掘CDG之间的逻辑关系，例如某药物抑制了某肿瘤的发展，这里的“抑制”就表明了药物与该肿瘤之间的逻辑（即抑制）关系。同时</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp; 请自行设计返回结果及形式。【20分】</p>
							   <p>&nbsp;&nbsp;&nbsp;&nbsp;5.可视化展示返回结果。【20分】</p>
						   
						   
						   
						   
						   
						   
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
