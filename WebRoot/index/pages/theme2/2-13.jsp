<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 腐蚀与安全科普作品 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 腐蚀与安全科普作品 </span></a></p>
                
                
                <h2 class="h_title"> 腐蚀与安全科普作品 </h2>
               
               
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
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1）作品以动画或者视频形式呈现，作品时长5-10分钟；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2）作品选取腐蚀安全相关的事件、案例，如管道泄漏、爆炸，桥梁、建筑坍塌等突发安全事故等，结合腐蚀知识及相关数据，宣传腐蚀与安全的关系，发挥自己的创意，引发人们对腐蚀安全的重视；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3）声音清晰，画面稳定；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4）参赛作品必须原创，禁止抄袭。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;补充：图文并茂的论文报告、小册子也可以。</span><br>
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1）材料腐蚀平台典型材料腐蚀及案例（可根据具体要开展的工作，从材料腐蚀平台门户网站www.ecorr.org下载，具体要求也可联系材料腐蚀平台信息技术中心协助解决）电话：010-82387968；QQ：815397784；邮箱：guojing733@163.com，邮寄地址：北京市海淀区学院路30号方兴大厦1103；邮编：100083</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2）参赛作品制作过程中涉及的试验、检测等方法和仪器设备（可与材料腐蚀平台信息技术中心试验与检测部联系）电话：010-82387968；QQ：815397784；邮箱：guojing733@163.com，邮寄地址：北京市海淀区学院路30号方兴大厦1103；邮编：100083</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3）腐蚀与安全专题内容参考链接（网站www.ecorr.org）（专题链接：http://www.ecorr.org/zhuanlan/2014/0124/8171.html）</span><br>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. 作品中出现的案例、事件与腐蚀的相关程度，对国家材料环境腐蚀平台资源的有效利用 20分</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. 对作品中出现的案例、事件进行分析，结合腐蚀知识和相关数据，宣传腐蚀与安全的关系 30分</span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3. 发挥创意，引发人们对腐蚀安全的重视，突出作品的意义 30分 </span>
						   	<br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4. 视频或者动画的画面、声音等应清晰流畅 10分</span>
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
