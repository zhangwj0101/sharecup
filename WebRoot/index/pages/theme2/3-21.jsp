<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 基于HTML5的肿瘤流行病数据可视化 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 基于HTML5的肿瘤流行病数据可视化 </span></a></p>
                
                
                <h2 class="h_title"> 基于HTML5的肿瘤流行病数据可视化 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						
						   <p><b>一、作品形式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;软件工具</span>
						   </p>

						
						   <p><b>二、背景知识：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;20世纪70年代以来，恶性肿瘤的发病率及病死率均呈现上升趋势，恶性肿瘤成为广泛关注的焦点，肿瘤研究也进入进入了大数据时代。伴随着大数据时代的来临，进行数据可视化应用开发的人群也迅速扩大，促进了更加智能的数据可视化工具的出现，为更大范围的人们提供了接触可视化思想的机会。</span><br>
						   </p>
						   						   
						   <p><b>三、作品要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;基于附件中的”数据资源1”和相应的字典”数据资源2-4”，编写软件搭建一个肿瘤流行病数据可视化web服务器，需满足下面要求：</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. 将文本资源整理入数据库。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. 基于HTML5 SVG和D3.js实现数据的查询和查询结果的动态展示。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3. 以”icd_o_3”的前3个字符对肿瘤进行分类，饼图展现每年发病率前9位的肿瘤，剩下归为其它类。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4. 当选择某类肿瘤时，折线图展示每年的发病数。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;5. 当选择某类肿瘤时，bar图展示男女性别2009年-2013年的发病数据。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;6. 箱式图展现每年肿瘤发病与年龄的关系。</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;7. 雷达图展现发病率最高的10种肿瘤。</span><br>
						   	<span style="text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;<img src="img/111111-31.png"></span><br>
						   	<span style="text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;图1. 饼图动态展示示例</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;具体要求请参见考核要求及打分标准。网站开发所用的程序语言不作限制。</span><br>
						   </p>							
						   
						   <p><b>四、数据资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1. “数据资源1--2008-2013肿瘤发病数据库.xls”</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2. “数据资源2--basi(诊断依据)编码表.txt”</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3. “数据资源3--ICD-O-3 解剖 中英对照.txt”</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4. “数据资源4--ICD-O-3 形态 中英对照.txt”</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;备注：“数据资源1--2008-2013肿瘤发病数据库.xls”性别字段1为男性，2为女性；“数据资源2--basi(诊断依据)编码表.txt”对应“数据资源1”中的“basi”字段；“数据资源3--ICD-O-3 解剖 中英对照.txt”对应“数据资源1”中的“icd_o_3”字段；“数据资源4--ICD-O-3 形态 中英对照.txt”对应“数据资源1”中的“morphology”字段。</span><br>
						   </p>
						
						   <p><b>五、考核要求：</b></p>
						   <p>
						    <span>&nbsp;&nbsp;&nbsp;&nbsp;实现“要求1”流行病学数据库化。【10分】</span><br>
						    <span>&nbsp;&nbsp;&nbsp;&nbsp;实现“要求3”饼图展示。【10分】</span><br>
						    <span>&nbsp;&nbsp;&nbsp;&nbsp;实现“要求4”折图展示。【10分】</span><br>
						    <span>&nbsp;&nbsp;&nbsp;&nbsp;实现“要求5”柱状图展示。【10分】</span><br>
						    <span>&nbsp;&nbsp;&nbsp;&nbsp;实现“要求6”箱式图展示。【10分】</span><br>
						    <span>&nbsp;&nbsp;&nbsp;&nbsp;实现“要求7”雷达图展示。【10分】</span><br>
						    <span>&nbsp;&nbsp;&nbsp;&nbsp;实现“要求2”依据前台搜索结果实现动态化展示。【40分】</span><br>
						   </p>						   						   					　　
						   						   
						   <p><b>六、评审原则和标准：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;具体评分根据参赛者的分析结果质量以及可视化效果而定。结果要求全面准确，可视化以简洁、美观为标准。</span><br>
						   </p>	
						   						   
						   <p><b>七、竞赛题目联系方式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;联系方式qingchen36@gmail.com，来信题目请标明“共享杯竞赛”。</span><br>
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
