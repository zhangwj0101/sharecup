<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../include/tags.jsp"%>

<html>

	<head>
		<title> 基于Android的农作物种质资源野外考察数据采集系统开发 </title>
		
		
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
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="<%=basePath %>index/pageIndex_theme.action">竞赛主题</a>&gt;&gt;<a href=""><span class="h_title"> 基于Android的农作物种质资源野外考察数据采集系统开发 </span></a></p>
                
                
                <h2 class="h_title"> 基于Android的农作物种质资源野外考察数据采集系统开发 </h2>
               
               
                <div class="p_cont">



					<div class="m-detail">
						
						<div class="m-title"><h3></h3></div>
						
						<div class="m-content">
						
						   <p><b>一、作品形式：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;软件工具</span>
						   </p>
						
						   <p><b>二、题目背景及目的：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;在野外进行农作物种质资源考察时需要进行数据采集，一般情况下采用纸笔来记录，后期再将记载在纸上的信息录入电脑，效率较低，且容易出错。因此，本题要求开发基于Android4.1以上手持设备（包括手机和平板电脑）的数据采集系统，以方便农作物种质资源野外考察时的数据采集录入工作。</span>
						   </p>						   
						   
						   <p><b>三、作品要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1、根据提供的数据字典DataDict.csv文件，自动生成csv格式的数据采集表，以及数据录入界面，录入数据存入数据采集表，关于DataDict.csv的内容说明，请查看其文件；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2、DataDict.csv保存在./config目录下，自动生成的数据采集表以csv格式保存在./data下；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3、DataDict.csv要求可以在系统中修改，包括字段的增加、修改和删除，设置字段的显示类型和值域，需提供修改界面；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4、每次考察时，先“新建考察”，生成数据采集表，可自定义表名，如“20140211.csv”存于./data下，然后“新建记录”，打开录入界面，开始录入，录入结束将该记录保存至此前生成的数据采集表中；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;5、可对录入的数据表和记录进行浏览、查询、修改和删除；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;6、自动获取GPS信息，填入录入界面；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;7、拍照功能，可添加多张照片，需将照片的文件名存入数据采集表，并将照片文件拷贝至./data下以数据采集表表名命名的文件夹中。</span><br>
						   </p>							
						   
						   <p><b>四、提供资源：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;提供数据字典文件DataDict.csv，如对需求有不明之处，请与国家农作物种质资源平台管理办公室联系，010-62156875，office@cgris.org。</span><br>
						   </p>
						
						   <p><b>五、考核要求：</b></p>
						   <p>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;1、满足上述基本功能需求，可自行添加其他功能，如地图显示等；</span><br>
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;2、能自适应常见分辨率的设备；</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;3、程序具有友好的用户操作界面；</span><br>					   							   							   							   	
						   	<span>&nbsp;&nbsp;&nbsp;&nbsp;4、提交所有源代码、安装程序、开发文档和使用说明；</span><br>					   							   							   							   	
						   </p>						   						   					　　
						   
						   <p><b>六、评审原则和标准：</b></p>
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
