<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 水产种质资源平台:珍稀水生动物保护宣传片制作大赛</title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">珍稀水生动物保护宣传片制作大赛</span></a></p>
                
                
                <h2 class="h_title"> 珍稀水生动物保护宣传片制作大赛</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
							
							<p>&nbsp;&nbsp;&nbsp;&nbsp; 围绕珍稀野生水生动物的栖息地、产卵场、索饵场、洄游路线等重要生境和繁殖生理特性及重要科学研究价值等内容摄制视频作品，用通俗易懂的语言和生动的表现形式向社会宣传保护水生野生动物的重要意义，
								提高公众关爱自然、保护环境的意识。</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp; 视频制作工具不限，视频文件应采用主流格式。</p>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b>
                       	  <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 竞赛用_水产种质资源数据20130513A.mdb中的“1水生动物基本生物学信息”；</p>
                           	  <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 相关视频素材可实地采集（联系电话：68676691，邮件地址：gaolei@cafs.ac.cn）</p>
                           	
                           	
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
					      <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 是否紧扣主题（珍稀水生动物，资源保护，生存环境，习惯习性），思路清晰、简单易懂、具有科普性【30分】； </p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 视频内容选取是否完整、丰富、得当；视频清晰度、分辨率、流畅度，特效运用是否恰当；持续时间是否小于20分钟【30分】；</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;3. 解说是否清晰准确、字幕与解说是否一致、配音配乐是否恰当【20分】；</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;4. 视频内容的原创性【20分】。</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;参考材料</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;CCTV 1 《人与自然》 20110603 自然发现——大麻哈鱼洄游</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://jishi.cntv.cn/renyuziran/classpage/video/20120416/100126.shtml" target="_blank"> （上集）</a></p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://kejiao.cntv.cn/nature/renyuziran/classpage/video/20110603/100395.shtml" target="_blank"> （下集）</a></p>
							  
						   
						   
						   
						   
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
