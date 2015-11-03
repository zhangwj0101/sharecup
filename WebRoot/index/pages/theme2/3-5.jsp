<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 作物种质资源WebGIS开发 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 作物种质资源WebGIS开发 </span></a></p>
                
                
                <h2 class="h_title"> 作物种质资源WebGIS开发 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						
						   <p><b>一、作品形式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;软件工具</span>
						   </p>
						   
						   <p><b>二、作品要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;开发WebGIS程序，将作物种质资源在我国的分布情况进行展示，并进行一些基本的空间分析应用。</span><br>
						   </p>							
						   
						   <p><b>三、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;提供大豆资源分布数据及其相关属性数据一份，文件名为soybean.dbf，数据格式为dbf数据库文件，数据量23587条记录，数据文件中的经纬度数据为DDDMM格式，前三位或两位为度，后两位为分，转换时请注意。如需更多资源分布数据或帮助，请与国家农作物种质资源平台管理办公室联系，010-62156875，office@cgris.org。</span><br>
						   </p>
						
						   <p><b>四、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1、要求采用SuperMap IS .NET 6企业版进行开发，SuperMap IS .NET 6企业版的下载http://support.supermap.com.cn/ProductCenter/DownloadCenter/DownloadPage.aspx?id=74和申请试用许可，http://support.supermap.com.cn/ProductCenter/License/UserLicense.aspx；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2、提交所有源代码；</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3、程序具有友好的用户操作界面；</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4、程序应具有基本的地图操作，可以自由发挥，创新功能设计；</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;5、提交程序说明文档及使用说明；</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;6、程序需能选择不同作物，能针对作物的某一属性字段进行简单统计并在地图上显示，通过点击需能显示每条记录的属性信息。</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;7、基础底图采用1：400万全国基础底图。</span><br>					   							   							   							   	
						   </p>						   						   					　　
						   
						   <p><b>七、评审原则和标准：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;将组织专家对所提交的程序及相关附件进行统一评判。根据程序功能实现程度、操作使用难易、文档是否齐全等进行综合评判。</span><br>
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
