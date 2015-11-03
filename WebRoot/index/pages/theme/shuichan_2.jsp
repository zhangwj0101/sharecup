<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 水产种质资源平台: 看图识鱼软件 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title">看图识鱼软件</span></a></p>
                
                
                <h2 class="h_title">看图识鱼软件</h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						　　<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>要求：</b>
							     <p>&nbsp;&nbsp;&nbsp;&nbsp; 开发移动终端使用的应用软件，通过照片、关键性状描述等方式，判别主要常见鱼类，
							     	并提供基本种质资源信息介绍。软件功能应包含但不限于以下内容：</p>
							     <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 形成电子书：对照鱼类的典型照片，介绍鱼的名称、分类地位、生理学和形态学等特征，
							     	帮助社会公众认识常见鱼类，起到科普作用。</p>
							     <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 帮助用户确定日常生活中遇到的某类鱼的名称：根据各类体型、口位、尾型和鳞片的示例图片，选择体型、口位、尾型和鳞片的类型，逐级分析判断鱼所属的大类（门、纲、目、科、种），
							     	   最后配合以图片对照的方法，最终确定鱼的具体名称。</p>
							     <p>&nbsp;&nbsp;&nbsp;&nbsp; 编写所用的程序语言不作限制，支持的软硬件平台不限。</p>
							
							
							<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>数据：</b>
                       	  <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 竞赛用_水产种质资源数据20130513A.mdb中的“2鱼类基本生物学信息”；</p>
                           	  <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 其他相关材料可自行选择。</p>
                           	
                           	
                           	
                           	<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>考核要求：</b>
					      <p>&nbsp;&nbsp;&nbsp;&nbsp;1. 是否构建了鱼类标准化描述信息库，对体型、口位、尾型和鳞片类型等信息进行规范描述，并附有各类体型、口位、尾型和鳞片的示例图片【20分】；</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;2. 提供的照片中的鱼是否有代表性，是否有描述生理学和形态学特征，照片中是否有尺寸参照物，雌雄性别有显著差异时是否提供两种照片【20分】； </p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;3. 照片的数量，清晰度，是否显示全鱼，特征部位是否清晰明显，描述说明是否与照片一致【20分】；</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;4. 软件的功能是否完整，操作是否简单，界面是否简洁友好，运行是否稳定，响应速度是否快【20分】；</p>
							  <p>&nbsp;&nbsp;&nbsp;&nbsp;5. 内容的原创性【20分】。</p>
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
