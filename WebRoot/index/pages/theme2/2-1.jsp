<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 珠宝玉石鉴赏可视化展示 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 珠宝玉石鉴赏可视化展示 </span></a></p>
                
                
                <h2 class="h_title"> 珠宝玉石鉴赏可视化展示 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						
						   <p><b>一、作品形式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;多媒体作品（包括网页、动画、视频等）</span>
						   </p>
						   
						   <p><b>二、作品要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1、本竞赛题目基于国家岩矿化石标本资源共享中矿物、岩石、矿石标本及精美图片数据库和珠宝玉石专题数据库中数据及图片的收集，选取一个或多个重要的珠宝玉石品种（包括：钻石、红蓝宝石、祖母绿、翡翠、和田玉等），完成珠宝玉石可视化展示系统。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2、每种珠宝玉石的主要内容包括：历史与文化、宝石学基本性质及鉴定、质量评价、形成与产地、开采加工与贸易、设计与制作及精品赏析等。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3、配有较多精美图文及说明、动画、视屏及语音解说。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4、制作的“珠宝玉石鉴赏可视化展示”系统应为网络版，可以在“国家标本资源平台”及其子平台“国家岩矿化石标本资源平台”上共享。</span><br>
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;国家岩矿化石标本资源共享平台提供矿物、岩石标本数据及图片查询。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;网址：http://www.nimrf.net.cn/</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;联系方式：杨眉 13601019605</span><br>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1、提交的作品必须为原创性作品。作品内容准确丰富，体现科学性、专业性、艺术性。分值占50%。</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2、作品中引用的图片精美，视频清晰，解说深入浅出，简明易懂。分值占20%。</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3、作品表现方式生动、灵活、趣味性强，体现参赛者的活力和创新性。分值占20%。</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4、软件可操作性强，能在常用的浏览器下运行，便于用户使用，向公众普及珠宝玉石鉴赏知识。分值占10%。</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
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
