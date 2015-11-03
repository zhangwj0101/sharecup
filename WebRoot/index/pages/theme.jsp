<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>

<html>

	<head>
		<title>竞赛主题及形式</title>
		
		
		<style type="text/css">
			.m-themes{
				color: #0e0e0e;
				font-size: 15px;
				line-height: 35px;
			}
			
			.m-detail {
				display: none;
			}
			
			.m-result{
				font-weight:bold;
				padding-left: 15px;
			}
			
			.m-flag{
				font-weight:bold;
			}
			
			.m-themes a{
				text-decoration: none;
			}
			
			.m-themes ul li{
				list-style: none;
				background: url(<%=basePath %>img/item.png) 2px 9px no-repeat;
				padding-left: 15px;
			}
			
			.m-themes ul li span{
				font-weight:bold;
			}
			
			.m-themes-sub ul li{
				list-style: none;
				background: none;
				padding-left: 2px;
			}
			
			.third_theme li a{
				padding-left:18px;
			}
			
		</style>
		
		<script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>
		<script type="text/javascript">
			$().ready(function(){
				$('.m-flag').click(function(){
					$(this).next().slideToggle();
				});
				$('a.second_theme').click(function(){
					$(this).next('.third_theme').slideToggle();
				});
			});
		</script>
		
	</head>

	<body>
		<body>
			<div class="title"></div>
			<div class="line_nav">
			<jsp:include page="../head.jsp"></jsp:include>
			</div>
			
			
			
			
			
			
			
			
		<div id="box">

          	<jsp:include page="../left.jsp"></jsp:include>
            
            
            <div class="right">
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="#">竞赛主题及形式</a></p>
                
                
                <h2 class="h_title">竞赛主题及形式</h2>
                
                <p style="margin-top: 8px;text-indent:2em;line-height:30px;">参赛作品的形式包括论文或报告、多媒体作品和软件工具。论文、报告类作品每篇在12000字以内，多媒体作品和软件工具的制作要符合题目的相关要求。参赛者可选择以下参考主题参赛，也可围绕国家科技平台资源利用与共享相关主题自拟题目。</p>
                
               	<p style="text-indent:2em;color:red;line-height:30px;font-weight:bold;font-size:14px;">题目所需的相关资源，请登录后到个人中心下载。</p>
               
               
               
                <div class="p_cont">



					<div class="m-themes">
						
						<ul>
						


							<li>
								<a class="m-flag" href="javascript:void(0);">论文报告类</a>
								<div class="m-detail">
									<div class="m-themes-sub">
										<ul>
										
										    <li>　　　针对我国科技资源共享情况和各国家科技平台运行服务现状，充分利用平台各类数据、实物、仪器等资源，就推动国家科技资源共享，完善国家科技资源管理方面开展研究，并形成相关论文。 <a style="text-decoration:underline; color:#0000ff;" href="<%=basePath %>upload/resource/articleModule.doc" target="_blank">点击下载"共享杯论文参考模板"</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1gd0Jtp5">（1）2008-2010年国产药物及其生产企业情况分析</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1hq8OM0k">（2）II型糖尿病视网膜病变的关联因素分析</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1mgnHWko">（3）SHRIMP 锆石U-Pb定年或氧同位素分析技术及应用题目要求</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1hqJEjdE">（4）标准物质及其应用</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1bnjq3x1">（5）常绿阔叶林凋落物量与气象因子的关系</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1o6MjMl0">（6）典型区域资源环境变化及其区域响应相关研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1eQEY5Tg">（7）动态心电数据的心率变异性分析和心率特征表达</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1pJCEuhX">（8）高校科普教育标准化调研报告</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1kTJ8cV9">（9）国内外农业信息技术发展状况比较与分析</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1BcTuI">（10）基于大样本血液生化检测的数据挖掘</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1gdJanXh">（11）基于地理信息系统的甲型H1N1流感的空间分析</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1pJOP5gv">（12）基于高分1号卫星数据的区域监控方法研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1o6qvBDo">（13）基于痕量元素分析的先进材料基因快速筛选方法研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1sjmRMsl">（14）基于科学计量学的中国卫生政策法规资源关联分析</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1gd6iWRT">（15）基于数据挖掘的前列腺癌预测模型的建立</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1hq1xoxu">（16）基于微信的移动网络科普发展研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1jG6cSN8">（17）基于中医药科学数据的数据利用方法学探讨</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1hqyF0lY">（18）吉县蔡家川流域生态恢复过程中不同林种土壤水分对气象因子和植被特征的响应规律</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1hqnkbS4">（19）极地生态历史与人类活动的关系</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1qWvbrBY">（20）家养动物保护与利用问题研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1eQAUJ8e">（21）抗感染药物不良反应情况分析</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1hqJEjfm">（22）空气污染气象参数的优选及其预报模型建立</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1bnsea0B">（23）连续秸秆还田对黑土耕层土壤肥力的影响</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1dD6nha5">（24）林业授权品种数据深度挖掘</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1eQvvEoU">（25）某领域我国标准数据挖掘 </a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1sjMdEjz">（26）气候变化下的水循环 </a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1i3Em129">（27）秦岭松栎混交林土壤水源涵养功能评价 </a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1i3HAk65">（28）人体寄生虫现有基因分子数据库分析及整合探索题目要求 </a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1eQoAe46">（29）食品中有毒有害物快速检测方法的研究 </a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1mgBy2Ti">（30）糖尿病并发肿瘤的关联因素分析与风险预测</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1c015wcC">（31）糖尿病治疗药物与特定并发症的相关性研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1dD2Prpv">（32）天气敏感性疾病与气象条件的关系及预测模型建立</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1sjp9AYp">（33）天然化合物对细胞的影响</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1c00j0oo">（34）微生物资源多样性、鉴定与系统化</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1c0c2UbA">（35）微生物资源新功能的发掘与评价</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1BIQgY">（36）我国不同畜种资源变化趋势分析</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1bnsJU4B">（37）我国某领域标准物质发展现状与统计分析研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1i3F8vjB">（38）武陵山区国家级自然保护区野生动物保护现状分析</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1pJvJq7D">（39）雾霾与敏感性疾病发病与流行关系研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1c0lWwiW">（40）现代计量学科普论文</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1hqfI680">（41）有机质谱敞开式离子化方法研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1dDnWjyp">（42）直接实时分析质谱在药品、保健品及食品监管中的应用</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1sjBUlHV">（43）中药复方有效成分的关联性研究</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1dD8UNWP">（44）肿瘤细胞的培养及应用</a></li>
										    <li><a target="_blank" href="http://pan.baidu.com/s/1bnsJU4R">（45）自然环境中的材料腐蚀</a></li>
											<li><a target="_blank" href="http://pan.baidu.com/s/1qWqrCDm">（46）集体林权改革现状研究</a></li>
											<li><a target="_blank" href="http://pan.baidu.com/s/1ntL5RgH">（47）生态环境变化对野生鸟类迁徙的影响研究</a></li>
											<li><a target="_blank" href="http://pan.baidu.com/s/1dDnWjy5">（48）天然红松空间分布研究</a></li>
											<li><a target="_blank" href="http://pan.baidu.com/s/1eQJLJxw">（49）中医药科学数据的数据挖掘分析 </a></li>	
										</ul>
									</div>
								</div>
							</li>


							<li>
								<a class="m-flag" href="javascript:void(0);">多媒体类</a>
								<div class="m-detail">
									<div class="m-themes-sub">
										<ul>
										   <!--  <li><a target="_blank" href="<%=basePath %>index/pages/theme3/2f1.jsp">&nbsp;&nbsp;1、国家科技平台网站首页设计</a></li>	
										    <li><a target="_blank" href="<%=basePath %>index/pages/theme3/1f1.jsp">&nbsp;&nbsp;2、国家科技平台宣传推广短片</a></li>	
										    
											<li><a class="second_theme" href="javascript:void(0);">&nbsp;&nbsp;3、动漫或视频制作</a>
												<div class="third_theme" style="display:none;">
													<ul> -->
														<li>　　　根据国家科技平台的资源特点和运行服务情况，在相关平台提供的素材基础上，设计适合该平台宣传的动画、视频等。</li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1gd0JtsB">（1）《天外来客 — 陨石识别与鉴定》可视化展示</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1qWrD1Uk">（2）标准就在我们身边</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1eQAUJ9C">（3）常见水产品电子手册</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1jGm0fYY">（4）地球系统科学知识科普宣传作品</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1bnyjCQF">（5）古生物群专题可视化展示</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1jGrjKYM">（6）国家林木种质资源平台实物资源包装设计</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1qWyzefa">（7）国家农作物种质资源平台明信片设计</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1sjHZRPz">（8）海伦站宣传短片</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1kE5Wy">（9）计量科普多媒体作品系列——计量史话</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1pJj8crT">（10）家用电子血压计原理</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1eQpVY86">（11）临床科研数据数据集展示网页设计</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1hqpmcL2">（12）临床图谱数据数据集网页设计</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1sjxbgNN">（13）你眼中的材料腐蚀</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1dD8UNXB">（14）生活中的标准物质</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1pJqZ6ND">（15）水上大熊猫-中华白海豚</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1gdEq4Wr">（16）体现细胞特性的卡通、动漫作品</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1qW1MRzm">（17）微生物绘画</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1eQnomyQ">（18）中国气象科学数据共享服务网宣传视频或动画制作</a></li>	
													    <li><a target="_blank" href="http://pan.baidu.com/s/1sjsrxbZ">（19）中国数字科技馆科普视频征集</a></li>																						
												<!-- 	</ul>
												</div>											    
										    </li> -->
										    									
										</ul>
									</div>
								</div>
							</li>
							
							

							<li>
								<a class="m-flag" href="javascript:void(0);">软件工具类</a>
								<div class="m-detail">
									<div class="m-themes-sub">
										<ul>
											<li>　　　根据相关平台提供的资源数据，开展基于地理信息、可视化或知识发现等方面的资源数据分析挖掘研究，形成相应的软件工具成果。</li>
											<li><a target="_blank" href="http://pan.baidu.com/s/1qWQjxLi">（1）地球科学数据管理、查询、挖掘分析与可视化工具 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1ntxjq6d">（2）地震波声音转换软件</a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1eQhO4Si">（3）腐蚀的机理可视化展示app </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1o6Caze6">（4）古树名木现状管理平台研制 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1hqB6BmW">（5）国家农作物种质资源平台图像管理系统开发</a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1eQyJ3eM">（6）基于Android的家养动物多媒体系统开发-鸡的解剖多媒体要求 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1hqCS8HA">（7）基于H5的中国数字科技馆资源整合 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1bn39q4v">（8）基于NI-LabView的可视化计量测试教学软件 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1jGIofH0">（9）基于web和数据库的用户数据提交和管理系统题目要求 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1dD0h2nv">（10）基于地理信息技术的银杏资源保护与利用 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1jGMrRfw">（11）基于环境应急监测的移动客户端开发 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1jGs5Fb4">（12）基于微信平台的气象服务信息发布 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1i3fG5Dj">（13）基于中国卫生统计年鉴数据的智能分析与可视化展示</a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1o6KNMki">（14）基于肿瘤登记数据的ICD编码自动匹配和发病分析软件 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1foO0I">（15）教你读懂震源机制解</a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1dDJep6T">（16）林业授权新品种查询APP开发</a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1gdm6gO7">（17）面向鱼港主要技术数据的挖掘与展示工具 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1sjOL2Kt">（18）全国脑卒中筛查与评估工具 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1gdCUBsv">（19）人工地震探测剖面的地理位置展示系统 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1ntiWijJ">（20）铁观音抗虫种质资源调查及筛选数据库 </a></li>	
											<li><a target="_blank" href="http://pan.baidu.com/s/1eQ33mzo">（21）中国数字科技馆科普轻游戏设计开发 </a></li>	
										</ul>
									</div>
								</div>
							</li>
							
							
							<li>
								<a class="m-flag" href="javascript:void(0);">自拟题目</a>
								<div class="m-detail">
									<div class="m-themes-sub">
										<p style="text-indent:2em; line-height:30px;">根据国家科技平台相关资源，围绕深化科技资源开放共享与深度挖掘等方面，自拟参赛题目。参赛者可向国家科技平台提出申请（申请方式见官网），使用相关数据、仪器、文献、生物种质资源和网络计算环境等资源。参赛作品的形式包括论文或报告、多媒体作品和软件工具。</p>
										<p style="text-indent:2em; line-height:30px;">若需要相关平台资源，可联系我们，电话010-82339102，邮箱share@escience.gov.cn。</p>
									</div>
								</div>
							</li>
							
						
						</ul>
						
					</div>




                </div>
                <div class="p_cont">
                  	<p style="text-indent:2em;color:red;line-height:30px;font-weight:bold;font-size:18px;">企业类题目  </p>
                <div class="m-themes">
	                <ul>
								<li>
									<a class="m-flag" href="javascript:void(0);">论文报告类</a>
									<div class="m-detail">
										<div class="m-themes-sub">
											<ul>
											    <li><a target="_blank" href="http://pan.baidu.com/s/1gdeyFz9">（1）大北农动物医学研究中心--动物疫病与环境污染</a></li>
											    <li><a target="_blank" href="http://pan.baidu.com/s/1eQIwsU2">（2）大北农农信集团--大数据在生猪生产过程中的实践</a></li>
											    <li><a target="_blank" href="http://pan.baidu.com/s/1ntN7EXV">（3）大北农农信集团--利用互联网构建智慧养猪服务平台创业计划</a></li>
											    <li><a target="_blank" href="http://pan.baidu.com/s/1mgKRWbY">（4）大北农农信集团--物联网在生猪生产过程中的应用</a></li>
	
											</ul>
										</div>
									</div>
								</li>
								<li>
									<a class="m-flag" href="javascript:void(0);">软件工具类</a>
									<div class="m-detail">
										<div class="m-themes-sub">
											<ul>
											    <li><a target="_blank" href="http://pan.baidu.com/s/1sjqV7MP">（1）北京华网汇通技术服务有限公司--健康大数据分析模型</a></li>
											    <li><a target="_blank" href="http://pan.baidu.com/s/1kTgYvRL">（2）北京华夏科创仪器技术有限公司--物联网新型扩展应用开发app</a></li>
	
											</ul>
										</div>
									</div>
								</li>
					</ul>
                </div>
                </div>
                <div class="p_cont">
                  	<p style="text-indent:2em;color:red;line-height:30px;font-weight:bold;font-size:18px;">创业类题目  </p>
                <div class="m-themes">
	                <ul>
						<li>
							<a class="m-flag" href="javascript:void(0);">论文报告类</a>
							<div class="m-detail">
								<div class="m-themes-sub">
									<ul>
									    <li><a target="_blank" href="http://pan.baidu.com/s/17Fe8I">（1）互联网思维下的科技资源开放利用创业计划书</a></li>
									    <li><a target="_blank" href="http://pan.baidu.com/s/1gdsBMfx">（2）学术社交网站建立及运营的商业计划书</a></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
                </div>
                </div>
            </div>
          </div>				
			
			
			<jsp:include page="../foot.jsp"></jsp:include>
			
		</body>
</html>
