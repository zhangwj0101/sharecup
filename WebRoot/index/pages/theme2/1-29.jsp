<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 中国数字科技馆原创栏目营销方案 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 中国数字科技馆原创栏目营销方案 </span></a></p>
                
                
                <h2 class="h_title"> 中国数字科技馆原创栏目营销方案 </h2>
               
               
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
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;对中国数字科技馆网站原创栏目《榕哥烙科》和《微专栏》进行栏目定位分析，提出栏目的营销策略、营销目标和营销评估方法，提高栏目的知名度和浏览量，树立栏目品牌。
						   	</span>
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;中国数字科技馆《微专栏》栏目所有内容：　　http://wzl.cdstm.cn/index.php?a=showAll</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;中国数字科技馆《榕哥烙科》系列视频，网址：　　http://v.cdstm.cn/tag.php?stype=0&keywords=榕哥烙科</span><br>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1．根据《榕哥烙科》和《微专栏》栏目以及中国数字科技馆网站整体的性质和现状，分别确立这两个栏目的定位。（25分）</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2．基于确立的栏目定位，分别提出两个栏目的营销策略和具体实施方案。（50分）</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3．分别确定两个栏目的营销目标并提出对营销的评估方案。（25分）</span>
						   </p>						   						   					　　
						
						   <p><b>五、评审原则和标准：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;论文须为原创，思路清晰，可实施性强，按照考核要求由专家评分。</span>
						   	<br>
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
