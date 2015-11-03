<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 国家生态系统观测研究网络: CERN农田生态系统产量评估 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">CERN农田生态系统产量评估</span></a></p>
                
                
                <h2 class="h_title"> CERN农田生态系统产量评估</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b> 要求： </b> 通过分析我国不同区域农田生态系统生物观测的农作物种类、品种、产量等观测数据（选择主要作物类型：小麦、水稻和玉米），结合环境要素数据分析不同区域农田生态系统产量情况，
							以及影响产量的主要因素，建立简单的数学模型。</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;不同区域农田生态系统的产量以及主要影响因素。</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b>CERN农田生态系统作物产量观测数据，以及气象（温度、降水）及土壤数据（土壤养分含量）。</p>
						   <P>&nbsp;&nbsp;&nbsp;&nbsp;站点选择</P>
						   <P>&nbsp;&nbsp;&nbsp;&nbsp;小麦：常熟站、长武站、封丘站、栾城站、拉萨站、临泽站、沙坡头站、禹城站和盐亭站；</P>
						   <P>&nbsp;&nbsp;&nbsp;&nbsp;水稻：常熟站、环江站、千烟洲站、三江站、沈阳站、沙坡头站、桃源站、盐亭站、鹰潭站；</P>
						   <P>&nbsp;&nbsp;&nbsp;&nbsp;玉米：安塞站、长武站、阜康站、封丘站、环江站、栾城站、临泽站、奈曼站、沙坡头站、沈阳站、禹城站、盐亭站、策勒站</P>
						   <P>&nbsp;&nbsp;&nbsp;&nbsp;数据</P>
						   <P>&nbsp;&nbsp;&nbsp;&nbsp;作物产量数据：农田作物种类与产值（AA01）。</P>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;作物物候数据：AA061水稻生育动态观测(2004年以后）、AA062小麦生育动态观测(2004年以后）、AA063玉米生育动态观测(2004年以后）</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;环境因子数据：生长季平均温度、积温、生长季平均降水、土壤氮、磷、钾含量等。</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;数据年份</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;2010年</p>
						   
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b></p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;（1）研究意义：主要考察研究报告能否简要阐述研究的意义、国内外相关研究进展，满分15分；</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;（2）研究方法：研究采用的方法是否合理，是否掌握分析方法的原理、适应范围等，满分20分；</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;（3）研究结果：研究结果是否通过文字、图、表等方式得到合理、有效的展示，满分30分；</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;（4）结果分析与讨论部分：是否能够对研究结果进行简明阐述、对比分析，对研究存在的问题进行合理解释，满分25分；</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;（5）参考文献：文献引用的是否规范，满分10分。</p>
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
