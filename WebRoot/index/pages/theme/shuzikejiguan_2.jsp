<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 中国数字科技馆: 基于中国数字科技馆科技博览馆的动画动漫设计制作 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">基于中国数字科技馆科技博览馆的动画动漫设计制作</span></a></p>
                
                
                <h2 class="h_title">基于中国数字科技馆科技博览馆的动画动漫设计制作 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>以动画、科普游戏为主，包括flash类、flash页面专题、html5类等科普资源，要求动画生动形象，操作简单。
							                                       表达主题明确，具有较强的科学性、艺术性。</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b> 数据：</b> 中国数字科技馆科技博览栏目的所有内容，网址：http://www.cdstm.cn/?action-review</p>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;1．主题鲜明。作品应该主题鲜明，重点围绕节约能源资源、保护生态环境、保障安全健康、促进创新创造的主题。在重点领域内，如食品安全、节能减排、防灾减灾等阐述科普知识。（15分）</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;2．对象明确。作品应有明确的科普宣传对象，如青少年、农民、城镇劳动人口、领导干部和公务员、社区居民等。（10分）</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;3．科学性。正确阐述了至少一个知识点。符合普及科学技术知识、倡导科学方法、传播科学思想、弘扬科学精神的要求，
						   有助</p>
						   <p>于启迪智慧，激励人们爱科学、学科学、用科学。如果出现科学性错误，该项记零分且一票否决。（25分）</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;4．艺术性。作品整体构思新颖，创作手法和表现形式有独创性，作品要具有感染力；注重自然科学与人文科学相结合，有较高艺术性。（25分）</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;5．趣味性。作品要求生动形象，寓教于乐，具有较高的趣味性。（15分）</p>
						   <p>&nbsp;&nbsp;&nbsp;&nbsp;6．通俗性。反映的科学技术知识通俗易懂，密切结合城乡人民群众生产、生活的实际。（10分）</p>
						   
						   
						   
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
