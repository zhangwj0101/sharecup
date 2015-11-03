<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
	<head>
		<%@ include file="../include/ui.jsp"%>
		<%@ include file="../include/head.jsp"%>
		<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
		<style type="text/css">
#div_mytable td {
	text-overflow: ellipsis;
}
</style>
<script type="text/javascript">
      function initSelect(){
    	  var platName = '<s:property value="#request.platName" />';
    	  var total = 23;
    	  for(var i=0;i<23;i++){
    		  if(document.getElementById("platName").options[i].value==platName){
    			   document.getElementById("platName").options[i].selected=true;
    		  }
    	  }
      }
</script>
	</head>

	<body onload="initSelect();">
		<div class="mainbox">

			<div class="mainbox">
				<div class="bm_bt">
					<span class="bmbt_txt">上交作品数量统计</span>
				</div>
			 
				
				<div class="content-box">
					<!-- Start Content Box -->
					<div class="content-box-header">
						<h3>统计结果</h3>
					</div>
					<!-- End .content-box-header -->
					<div class="content-box-content">
						<div class="show">
							<table style ="table-layout:fixed;text-align:center;" id="div_mytable" cellspacing="0">
							       <tr>
							           <td>请选择平台：</td>
							           <td>作品提交数量：</td>
							            
							       </tr>
								<s:iterator value="#request.platZuopinNum">
									<tr>
										<td>
                                           <form action="<%=basePath %>platcenter/platcenter_platZuopinNum.action" name="platNameFrom" method="post" >
												<select id="platName" name="platName" onchange="platNameFrom.submit()">
													<option value="国家生态系统观测研究网络">国家生态系统观测研究网络</option>
													<option value="国家计量基标准资源共享基地">国家计量基标准资源共享基地</option>
													<option value="北京离子探针中心">北京离子探针中心</option>
													<option value="国家农作物种质资源平台">国家农作物种质资源平台</option>
													<option value="国家标准物质资源共享平台">国家标准物质资源共享平台</option>
													<option value="国家实验细胞资源共享平台">国家实验细胞资源共享平台</option>
													<option value="国家林业种质资源平台">国家林业种质资源平台</option>
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
												</select>
											</form>
											<form action="<%=basePath %>platcenter/platcenter_studentInfo.action" name="studentInfoForm" method="post" target="_blank">
												 <input type="hidden" name="platName" value="<s:property value="#request.platName" />"/>
											</form>
                                        </td>
										<td><a title="查看上传作品的学生信息"   onclick="studentInfoForm.submit()"><s:property value="count"/>个</a></td>
									</tr>								
								</s:iterator>
							</table>
						</div>
					</div>
					<!-- End .content-box-content -->
				</div>

			</div>
	</body>
</html>
