<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>
<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
	<script type="text/javascript">
		function checkFile(){
			var filename = document.getElementById('small-input').value;
			if(filename==null||filename==''){
				alert("请选择上传的文件！");
				return false;
			}
			var subject =  document.getElementById('subject').value;
			if(!subject){
				alert("请选择参赛主题！");
				return false;
			}
			return true;
		}
		function selectPlat(obj){
			var val = $(obj).find('option:selected').val();
			if(val==='其他单位'){
				$('#other_unit_info').show();
				return false;
			}else{
				$('#other_unit_info').hide();
				$('#othername').val(val);
			}
		}
	</script>
	
	<style type="text/css">
		#sub-subject select {display:none;}
		#third-subject select {display:none;}
		#definetheme {display:none;}
	</style>
  </head>
  <body>
    <div class="mainbox">
    	<div class="bm_bt"><span class="bmbt_txt">作品上传</span></div>
    	
    	  <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>作品上传</h3>
        
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <form action="<%=basePath%>upload_workUpload.action" onsubmit="return checkFile();" enctype ="multipart/form-data" method="post" accept-charset="utf-8">
 			 <select id="platform-select" onchange="selectPlat(this);">
        		 <option class="cannot" tag="-1">请选择参赛主题所属平台</option>
        		 <option value="国家生态系统观测研究网络">国家生态系统观测研究网络</option>
        		 <option value="国家计量基标准资源共享基地">国家计量基标准资源共享基地</option>
        		 <option value="北京离子探针中心">北京离子探针中心</option>
        		 <option value="国家农作物种质资源平台">国家农作物种质资源平台</option>
        		 <option value="国家标准物质资源共享平台">国家标准物质资源共享平台</option>
        		 <option value="国家实验细胞资源共享平台">国家实验细胞资源共享平台</option>
        		 <option value="国家林木种质资源平台">国家林木种质资源平台</option>
        		 <option value="林业科学数据平台">林业科学数据平台</option>
        		 <option value="人口与健康科学数据共享平台">人口与健康科学数据共享平台</option>
        		 <option value="地震科学数据共享中心">地震科学数据共享中心</option>
        		 <option value="科技文献共享平台">科技文献共享平台</option>
        		 <option value="中国数字科技馆">中国数字科技馆</option>
        		 <option value="国家材料环境腐蚀野外科学观测研究平台">国家材料环境腐蚀野外科学观测研究平台</option>
        		 <option value="中国应急分析测试平台">中国应急分析测试平台</option>
        		 <option value="国家大型科学仪器中心">国家大型科学仪器中心</option>
        		 <option value="国家微生物资源平台">国家微生物资源平台</option>
        		 <option value="标本资源共享平台">标本资源共享平台</option>
        		 <option value="水产种质资源平台">水产种质资源平台</option>
        		 <option value="家养动物种质资源平台">家养动物种质资源平台</option>
        		 <option value="地球系统科学数据共享平台">地球系统科学数据共享平台</option>
        		 <option value="农业科学数据共享中心">农业科学数据共享中心</option>
        		 <option value="气象科学数据共享中心">气象科学数据共享中心</option>
        		 <option value="国家标准文献共享服务平台">国家标准文献共享服务平台</option>
        		 <option value="其他单位">其他单位</option>
        	 </select>
			 <div id="other_unit_info" style="font-size:12px;padding-left:8px;margin-top:8px;display:none;">
			  	<p><span style="display:inline-block;width:120px;text-align:left;">请输入单位名称：</span><input name="othername" id="othername" type="text" value="" /></p>
        	 	<p>
        	 		<span style="display:inline-block;width:120px;text-align:left;">请输入参考资源名称：</span><input name="otherrefer" type="text" value="" style="width:450px;"/><font color="#ff0000">&nbsp;&nbsp;多个资源用逗号隔开</font>
        	 	</p>
			 </div>
        	 <div style="clear:both;margin-top:15px;"></div> 	
        	 <select id="fir-subject" onchange="select(this);" style="float:left;">
        		 <option class="cannot" tag="-1">请选择参赛主题</option>
        		 <option value="论文报告类" tag="1">论文报告类</option>
        		 <option value="多媒体作品" tag="2">多媒体作品</option>
        		 <option value="软件工具类" tag="3">软件工具类</option>
        		 <option value="自拟题目" tag="4">自拟题目</option>
        		 <option value="企业论文报告类" tag="5">企业论文报告类</option>
        		 <option value="企业软件工具类" tag="6">企业软件工具类</option>
        		 <option value="创业论文报告类" tag="7">创业论文报告类</option>
        	 </select>
			<div id="sub-subject" style="float:left;">
	        	 <select id="select21">
	        		 <option class="cannot">请选择子主题</option>
	        		 <option value='2008-2010年国产药物及其生产企业情况分析'>2008-2010年国产药物及其生产企业情况分析</option>
<option value='II型糖尿病视网膜病变的关联因素分析'>II型糖尿病视网膜病变的关联因素分析</option>
<option value='SHRIMP 锆石U-Pb定年或氧同位素分析技术及应用题目要求'>SHRIMP 锆石U-Pb定年或氧同位素分析技术及应用题目要求</option>
<option value='标准物质及其应用'>标准物质及其应用</option>
<option value='常绿阔叶林凋落物量与气象因子的关系'>常绿阔叶林凋落物量与气象因子的关系</option>
<option value='典型区域资源环境变化及其区域响应相关研究'>典型区域资源环境变化及其区域响应相关研究</option>
<option value='动态心电数据的心率变异性分析和心率特征表达'>动态心电数据的心率变异性分析和心率特征表达</option>
<option value='高校科普教育标准化调研报告'>高校科普教育标准化调研报告</option>
<option value='国内外农业信息技术发展状况比较与分析'>国内外农业信息技术发展状况比较与分析</option>
<option value='基于大样本血液生化检测的数据挖掘'>基于大样本血液生化检测的数据挖掘</option>
<option value='基于地理信息系统的甲型H1N1流感的空间分析'>基于地理信息系统的甲型H1N1流感的空间分析</option>
<option value='基于高分1号卫星数据的区域监控方法研究'>基于高分1号卫星数据的区域监控方法研究</option>
<option value='基于痕量元素分析的先进材料基因快速筛选方法研究'>基于痕量元素分析的先进材料基因快速筛选方法研究</option>
<option value='基于科学计量学的中国卫生政策法规资源关联分析'>基于科学计量学的中国卫生政策法规资源关联分析</option>
<option value='基于数据挖掘的前列腺癌预测模型的建立'>基于数据挖掘的前列腺癌预测模型的建立</option>
<option value='基于微信的移动网络科普发展研究'>基于微信的移动网络科普发展研究</option>
<option value='基于中医药科学数据的数据利用方法学探讨'>基于中医药科学数据的数据利用方法学探讨</option>
<option value='吉县蔡家川流域生态恢复过程中不同林种土壤水分对气象因子和植被特征的响应规律'>吉县蔡家川流域生态恢复过程中不同林种土壤水分对气象因子和植被特征的响应规律</option>
<option value='极地生态历史与人类活动的关系'>极地生态历史与人类活动的关系</option>
<option value='家养动物保护与利用问题研究'>家养动物保护与利用问题研究</option>
<option value='抗感染药物不良反应情况分析'>抗感染药物不良反应情况分析</option>
<option value='空气污染气象参数的优选及其预报模型建立'>空气污染气象参数的优选及其预报模型建立</option>
<option value='连续秸秆还田对黑土耕层土壤肥力的影响'>连续秸秆还田对黑土耕层土壤肥力的影响</option>
<option value='林业授权品种数据深度挖掘'>林业授权品种数据深度挖掘</option>
<option value='某领域我国标准数据挖掘'>某领域我国标准数据挖掘</option>
<option value='气候变化下的水循环'>气候变化下的水循环</option>
<option value='秦岭松栎混交林土壤水源涵养功能评价'>秦岭松栎混交林土壤水源涵养功能评价</option>
<option value='人体寄生虫现有基因分子数据库分析及整合探索题目要求'>人体寄生虫现有基因分子数据库分析及整合探索题目要求</option>
<option value='食品中有毒有害物快速检测方法的研究'>食品中有毒有害物快速检测方法的研究</option>
<option value='糖尿病并发肿瘤的关联因素分析与风险预测'>糖尿病并发肿瘤的关联因素分析与风险预测</option>
<option value='糖尿病治疗药物与特定并发症的相关性研究'>糖尿病治疗药物与特定并发症的相关性研究</option>
<option value='天气敏感性疾病与气象条件的关系及预测模型建立'>天气敏感性疾病与气象条件的关系及预测模型建立</option>
<option value='天然化合物对细胞的影响'>天然化合物对细胞的影响</option>
<option value='微生物资源多样性、鉴定与系统化'>微生物资源多样性、鉴定与系统化</option>
<option value='微生物资源新功能的发掘与评价'>微生物资源新功能的发掘与评价</option>
<option value='我国不同畜种资源变化趋势分析'>我国不同畜种资源变化趋势分析</option>
<option value='我国某领域标准物质发展现状与统计分析研究'>我国某领域标准物质发展现状与统计分析研究</option>
<option value='武陵山区国家级自然保护区野生动物保护现状分析'>武陵山区国家级自然保护区野生动物保护现状分析</option>
<option value='雾霾与敏感性疾病发病与流行关系研究'>雾霾与敏感性疾病发病与流行关系研究</option>
<option value='现代计量学科普论文'>现代计量学科普论文</option>
<option value='有机质谱敞开式离子化方法研究'>有机质谱敞开式离子化方法研究</option>
<option value='直接实时分析质谱在药品、保健品及食品监管中的应用'>直接实时分析质谱在药品、保健品及食品监管中的应用</option>
<option value='中药复方有效成分的关联性研究'>中药复方有效成分的关联性研究</option>
<option value='肿瘤细胞的培养及应用'>肿瘤细胞的培养及应用</option>
<option value='自然环境中的材料腐蚀'>自然环境中的材料腐蚀</option>
<option value='集体林权改革现状研究'>集体林权改革现状研究</option>
<option value='生态环境变化对野生鸟类迁徙的影响研究'>生态环境变化对野生鸟类迁徙的影响研究</option>
<option value='天然红松空间分布研究'>天然红松空间分布研究</option>
<option value='中医药科学数据的数据挖掘分析'>中医药科学数据的数据挖掘分析</option>
	        	 </select>
	        	 <select id="select22">
	        		 <option class="cannot">请选择子主题</option>
	        		 <option value='《天外来客 — 陨石识别与鉴定》可视化展示'>《天外来客 — 陨石识别与鉴定》可视化展示</option>
<option value='标准就在我们身边'>标准就在我们身边</option>
<option value='常见水产品电子手册'>常见水产品电子手册</option>
<option value='地球系统科学知识科普宣传作品'>地球系统科学知识科普宣传作品</option>
<option value='古生物群专题可视化展示'>古生物群专题可视化展示</option>
<option value='国家林木种质资源平台实物资源包装设计'>国家林木种质资源平台实物资源包装设计</option>
<option value='国家农作物种质资源平台明信片设计'>国家农作物种质资源平台明信片设计</option>
<option value='海伦站宣传短片'>海伦站宣传短片</option>
<option value='计量科普多媒体作品系列——计量史话'>计量科普多媒体作品系列——计量史话</option>
<option value='家用电子血压计原理'>家用电子血压计原理</option>
<option value='临床科研数据数据集展示网页设计'>临床科研数据数据集展示网页设计</option>
<option value='临床图谱数据数据集网页设计'>临床图谱数据数据集网页设计</option>
<option value='你眼中的材料腐蚀'>你眼中的材料腐蚀</option>
<option value='生活中的标准物质'>生活中的标准物质</option>
<option value='水上大熊猫-中华白海豚'>水上大熊猫-中华白海豚</option>
<option value='体现细胞特性的卡通、动漫作品'>体现细胞特性的卡通、动漫作品</option>
<option value='微生物绘画'>微生物绘画</option>
<option value='中国气象科学数据共享服务网宣传视频或动画制作'>中国气象科学数据共享服务网宣传视频或动画制作</option>
<option value='中国数字科技馆科普视频征集'>中国数字科技馆科普视频征集</option>

	        		 <!-- <option value="动漫或视频制作" tag="1">动漫或视频制作</option> -->
	        	 </select>	 
	        	 <select id="select23">
	        		 <option class="cannot">请选择子主题</option>
	        		 <option value='地球科学数据管理、查询、挖掘分析与可视化工具'>地球科学数据管理、查询、挖掘分析与可视化工具</option>
<option value='地震波声音转换软件'>地震波声音转换软件</option>
<option value='腐蚀的机理可视化展示app'>腐蚀的机理可视化展示app</option>
<option value='古树名木现状管理平台研制'>古树名木现状管理平台研制</option>
<option value='国家农作物种质资源平台图像管理系统开发'>国家农作物种质资源平台图像管理系统开发</option>
<option value='基于Android的家养动物多媒体系统开发-鸡的解剖多媒体要求'>基于Android的家养动物多媒体系统开发-鸡的解剖多媒体要求</option>
<option value='基于H5的中国数字科技馆资源整合'>基于H5的中国数字科技馆资源整合</option>
<option value='基于NI-LabView的可视化计量测试教学软件'>基于NI-LabView的可视化计量测试教学软件</option>
<option value='基于web和数据库的用户数据提交和管理系统题目要求'>基于web和数据库的用户数据提交和管理系统题目要求</option>
<option value='基于地理信息技术的银杏资源保护与利用'>基于地理信息技术的银杏资源保护与利用</option>
<option value='基于环境应急监测的移动客户端开发'>基于环境应急监测的移动客户端开发</option>
<option value='基于微信平台的气象服务信息发布'>基于微信平台的气象服务信息发布</option>
<option value='基于中国卫生统计年鉴数据的智能分析与可视化展示'>基于中国卫生统计年鉴数据的智能分析与可视化展示</option>
<option value='基于肿瘤登记数据的ICD编码自动匹配和发病分析软件'>基于肿瘤登记数据的ICD编码自动匹配和发病分析软件</option>
<option value='教你读懂震源机制解'>教你读懂震源机制解</option>
<option value='林业授权新品种查询APP开发'>林业授权新品种查询APP开发</option>
<option value='面向鱼港主要技术数据的挖掘与展示工具'>面向鱼港主要技术数据的挖掘与展示工具</option>
<option value='全国脑卒中筛查与评估工具'>全国脑卒中筛查与评估工具</option>
<option value='人工地震探测剖面的地理位置展示系统'>人工地震探测剖面的地理位置展示系统</option>
<option value='铁观音抗虫种质资源调查及筛选数据库'>铁观音抗虫种质资源调查及筛选数据库</option>
<option value='中国数字科技馆科普轻游戏设计开发'>中国数字科技馆科普轻游戏设计开发</option>



	        	 </select>
	        	 	 <select id="select25">
	        		 <option class="cannot">请选择子主题</option>
	        		 <option value='大北农动物医学研究中心--动物疫病与环境污染'>大北农动物医学研究中心--动物疫病与环境污染</option>
<option value='大北农农信集团--大数据在生猪生产过程中的实践'>大北农农信集团--大数据在生猪生产过程中的实践</option>
<option value='大北农农信集团--利用互联网构建智慧养猪服务平台创业计划'>大北农农信集团--利用互联网构建智慧养猪服务平台创业计划</option>
<option value='大北农农信集团--物联网在生猪生产过程中的应用'>大北农农信集团--物联网在生猪生产过程中的应用</option>
	        	 </select>
	        	  </select>
	        	 	 <select id="select26">
	        		 <option class="cannot">请选择子主题</option>
	        		 <option value='北京华网汇通技术服务有限公司--健康大数据分析模型'>北京华网汇通技术服务有限公司--健康大数据分析模型</option>
<option value='北京华夏科创仪器技术有限公司--物联网新型扩展应用开发app'>北京华夏科创仪器技术有限公司--物联网新型扩展应用开发app</option>
	        	 </select>
	        	  </select>
	        	 	 <select id="select27">
	        		 <option class="cannot">请选择子主题</option>
	        		 <option value='互联网思维下的科技资源开放利用创业计划书'>互联网思维下的科技资源开放利用创业计划书</option>
<option value='学术社交网站建立及运营的商业计划书'>学术社交网站建立及运营的商业计划书</option>
	        	 </select>
	        	 <div id="select24" style=""><input type="text" value="" name="definetheme" id="definetheme" style="-webkit-border-radius: 1px;border-radius: 1px;"/></div>	        	 	        	        	 
			</div>          	 
			<div id="third-subject" style="float:left;">
	        	 <select id="select31">
	        		 <option class="cannot">请选择子主题</option>
	        		 <option value="珠宝玉石鉴赏可视化展示">珠宝玉石鉴赏可视化展示</option>
	        		 <option value="《南极陨石的富集规律、类型和研究进展》CAI课件">《南极陨石的富集规律、类型和研究进展》CAI课件</option>
	        		 <option value="极地古生态环境资源标本共享的系统设计：中国极地科考30年的记录与检索">极地古生态环境资源标本共享的系统设计：中国极地科考30年的记录与检索</option>
	        		 <option value="标准物质使用在线多媒体培训教程">标准物质使用在线多媒体培训教程</option>
	        		 <option value="扫描电子显微镜工作原理动画制作">扫描电子显微镜工作原理动画制作</option>
	        		 <option value="地震波形可视化">地震波形可视化</option>
	        		 <option value="计量动画作品系列——计量基础动画系列、计量文化动画系列、计量与工业动画系列、计量与民生动画系列">计量动画作品系列——计量基础动画系列、计量文化动画系列、计量与工业动画系列、计量与民生动画系列</option>
	        		 <option value="国家农作物种质资源平台标识Logo设计">国家农作物种质资源平台标识Logo设计</option>
	        		 <option value="河鳗的生命历程（动漫）">河鳗的生命历程（动漫）</option>
	        		 <option value="微生物微观世界视频">微生物微观世界视频</option>
	        		 <option value="标准与生活">标准与生活</option>
	        		 <option value="日常生活中的腐蚀危害问题科普作品">日常生活中的腐蚀危害问题科普作品</option>
	        		 <option value="腐蚀与安全科普作品">腐蚀与安全科普作品</option>
	        		 <option value="地球系统科学知识科普宣传作品">地球系统科学知识科普宣传作品</option>
	        		 <option value="家养动物平台LOGO设计">家养动物平台LOGO设计</option>
	        		 <option value="植物生长过程动漫演示">植物生长过程动漫演示</option>
	        		 <option value="动物细胞有丝分裂过程动画展示">动物细胞有丝分裂过程动画展示</option>
	        		 <option value="病原微生物安全知识科普宣传">病原微生物安全知识科普宣传</option>
	        		 <option value="早产儿喂养指导科普动画">早产儿喂养指导科普动画</option>
	        	 </select>
			</div>   
			<div style="clear:both;"></div> 
			<input type="hidden" value="" name="subject" id="subject">    	
        	<script type="text/javascript">
        		$().ready(function(){
        			$('#third-subject select').change(function(){
        				var sub3 = $(this).find('option:selected:not(.cannot)').val();
        				var sub2 = $("#sub-subject select:visible").find('option:selected:not(.cannot)').val();
        				var sub1 = $("#fir-subject").find('option:selected:not(.cannot)').val();
        				if(sub1 && sub2 && sub3){
        					$('#subject').val(sub1 + '    ' + sub2 + '    ' + sub3);
        				}else{
        					$('#subject').val('');
        				}
        			});
        			$('#definetheme').change(function(){
        				var sub3 = $(this).val();
        				if(sub3){
        					$('#subject').val('自拟题目' + '    ' + sub3);
        				}else{
        					$('#subject').val('');
        				}
        			});        			
        			$('#sub-subject select').bind('change', function(){
        				var obj=$(this).get(0);
	        			$('#third-subject select').hide();
	        			var selOption = obj.options[obj.selectedIndex];
	        			var tag = selOption.getAttribute('tag');
	        			var id = 'select3' + tag;
	        			if(document.getElementById(id)){
	        				$('#subject').val('');  
	        				$('#' + id).show();
	        				$('#' + id + ':selected').removeAttr('selected');
	        				$('#' + id + ' .cannot').attr('selected','selected');	        				
	        			} else {
	        				var sub2 = $(this).find('option:selected:not(.cannot)').val();
	        				var sub1 = $("#fir-subject").find('option:selected:not(.cannot)').val();
	        				if(sub1 && sub2){
	        					$('#subject').val(sub1 + '    ' + sub2);
	        				}else{
	        					$('#subject').val('');
	        				}	        			
	        			}       			
        			});
        		});
        		function select(obj){
        			$('#sub-subject select').hide();
        			$('#third-subject select').hide();
        			$('#definetheme').hide();
        			$('#subject').val('');
        			var selOption = obj.options[obj.selectedIndex];
        			var tag = selOption.getAttribute('tag');
        			if(tag==4){
        				$('#definetheme').val('');
        				$('#definetheme').show();
        				$('#definetheme').focus();
        				return;
        			}
        			var id = 'select2' + tag;
        			if(document.getElementById(id)){
        				$('#' + id).show();
        				$('#' + id + ':selected').removeAttr('selected');
        				$('#' + id + ' .cannot').attr('selected','selected');
        			}
        		}
        	</script>
        	 <br/>
       		 <fieldset>
       		   <div class="notification error png_bg" <c:if test="${tip!=null&&tip!=''}">style="display:block;"</c:if> <c:if test="${tip==''||tip==null}">style="display:none;"</c:if> > <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      			<div>
      			${tip}
      			</div>
    		</div>	
      		 <input class="text-input medium-input datepicker" type="file" id="small-input" name="upload" />
      		  &nbsp;&nbsp;&nbsp;&nbsp;<input class="button" type="submit" value="上传" />　
      		 <p>
      			<s:iterator value="#request.subjects" status="st">
      				<a target="_blank" title="${uptime}  ${subject }" href="<%=basePath %>download.action?filename=${filepath}">作品<s:property value='#st.index+1'/> </a>&nbsp;&nbsp;&nbsp;
      			</s:iterator>
      		 </p>
      		 <p><font color="red">*&nbsp;&nbsp;</font>最多只能上传两个作品。 </p>
      		 <p><font color="red">*&nbsp;&nbsp;</font>请上传 <b>.rar</b> 格式的文件。 </p>
      		 <p><font color="red">*&nbsp;&nbsp;</font>同名文件将被覆盖。 </p>
      		 </fieldset>
      	</form>
      		
      </div>
      <!-- End .content-box-content -->
    </div>
    
    
    <div class="notification attention png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div>
      		1、作品的详细说明文档。
      
      </div>
    </div>	
    <div class="notification attention png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div>
      		2、作品的程序的全部源代码及运行说明。
      
      </div>
    </div>	
    <div class="notification attention png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div>
      		3、论文类作品提交完整的论文。
      
      </div>
    </div>	
    <div class="notification attention png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div style='color:#f00'>
      		4、上传作品时请务必提交参赛学生信息表。
      
      </div>
    </div>
    	
    </div>
  </body>
</html>
