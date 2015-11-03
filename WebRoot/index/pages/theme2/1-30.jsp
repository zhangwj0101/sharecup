<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 基于气象条件的城市空气污染指数预报模型 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 基于气象条件的城市空气污染指数预报模型 </span></a></p>
                
                
                <h2 class="h_title"> 基于气象条件的城市空气污染指数预报模型 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						
						   <p><b>一、作品形式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;论文或报告</span>
						   </p>
						   <p><b>二、背景知识：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;一个成年人每天呼2万多次，吸入空气20公斤左右，比一天摄入的食物和水分多10倍多。人不摄食存活时间为20天，不摄入水分存活时间为7天，不睡眠存活时间为5天，不呼吸却只能存活10分钟。由此可见，空气直接影响人们的身体健康，间接影响人们的生活质量。随着人们生活水平的提高，人们越来越关心空气环境质量状况。空气环境质量随时间的动态变化是污染源排放情况、气象条件和下垫面性质等许多因素综合的结果。人们用空气污染指数来反映这一结果。空气污染指数（Air pollution index，简称API）就是根据环境空气质量标准和各项污染物对人体健康、生态、环境的影响，将常规监测的几种空气污染物浓度简化成为单一的概念性指数值形式。参考空气污染指数，能清楚地判断目前的空气质量情况，从而合理安排各项活动。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;在20世纪中后期，环境恶化使人们越来越认识到保护人类赖以生存的大气环境的重要性与紧迫感，对大气质量污染预报研究是当务之急。实现空气污染预报，使对城市的空气质量情况做到像天气预报一样事先“早知道”，从而对可能出现的空气污染采取及时、有效的防范措施。一些发达国家污染潜势和质量预报早在20世纪四五十年代就开始了，但普遍开展在70年代以后。研究污染潜势和质量预报在我国起步较晚。目前，天气预报技术已经比较成熟，但是空气污染预报相对滞后，因此，有必要通过气象条件的预报来研发空气污染预报技术。</span><br>
						   </p>							   
						   <p><b>三、作品要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;以气象条件为因子，利用逐步回归、卡尔曼滤波，神经网络等方法，建立空气污染指数（API）预报模型。
						   	</span>
						   </p>							
						   
						   <p><b>四、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;北京、南京、长春和西宁四个典型城市的：</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. 2010-2012年地面气象资料(文件名：“气象”文件夹下 西宁.txt,南京.txt,北京.txt,长春.txt)</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. 2010-2012年api指数(文件名：“API”文件夹下 西宁.txt,南京.txt,北京.txt,长春.txt)</span><br>
						   </p>
						   
						   <p><b>五、考核要求及分值：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1.文章结构完整，思路清晰，无重大错误。               【60】</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2.方法科学，可行性高，预报准确度高。                  【20】</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3.具有创新性。                                                    【20】</span><br>
						   </p>
						   
						   <p><b>六、评审原则和标准：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;具体评分根据参赛者返回的文章质量以及科学性、实用性、可行性等方法而定。论文要求结构完整、思路清晰为标准。</span><br>
						   </p>	
						   
						   <p><b>七、联系方式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;联系方式lixu07@lzu.edu.cn，来信题目请标明“共享杯竞赛”。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;</span><br>
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
