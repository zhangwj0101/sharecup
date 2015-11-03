<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>
<html>
  <head>
    <jsp:include page="../include/head.jsp" flush="true"></jsp:include>
    <!-- 
	<LINK href="<%=basePath%>style/css/css.css" type=text/css rel=stylesheet>
	 -->
	<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/link.js"></script>
  </head>
  
  <body>
  	 <jsp:include page="../head.jsp" flush="true"></jsp:include>
     <div class="clear"></div>
     <div class="wrap">
     <jsp:include page="../resourceleft.jsp" flush="true"></jsp:include>
<div id="flashbox">	
	<div id="side_r1">
	<div class="gxbox">	
	<div class="gx_bt"><span class="gx_bt_txt">资源详情</span></div>
	<div class="news_content">
	<table class="zybox" cellpadding="2" style="margin-top:20px;">
		<tr>
			<td class="zyxx"><span>数据集名称：</span></td>
			<td align="left"><s:property value="resource.name"/></td>
		</tr>
		<tr>
			<td class="zyxx"><span>所属平台：</span></td>
			<td align="left"><s:property value="resource.platform.name"/></td>
		</tr>
		<tr>
			<td class="zyxx"><span>数据集内容：</span></td>
			<td align="left"><s:property value="resource.detail"/></td>
		</tr>
		<tr>
			<td class="zyxx"><span>项目来源：</span></td>
			<td align="left"><s:property value="resource.origin"/></td>
		</tr>
			<tr>
			<td class="zyxx"><span>时间范围：</span></td>
			<td align="left"><s:property value="resource.timerange"/></td>
		</tr>
	 
			<tr>
			<td class="zyxx"><span>学科范围：</span></td>
			<td align="left"><s:property value="resource.sciencerange"/></td>
		</tr>
		 
			<tr>
			<td class="zyxx"><span>数量：</span></td>
			<td align="left"><s:property value="resource.quantity"/></td>
		</tr>
		 
			<tr>
			<td class="zyxx"><span>数据类型：</span></td>
			<td align="left"><s:property value="resource.datatype"/></td>
		</tr>
		 
			<tr>
			<td class="zyxx"><span>查看工具：</span></td>
			<td align="left"><s:property value="resource.viewtool"/></td>
		</tr>
		 
			<tr>
			<td class="zyxx"><span>更新频率：</span></td>
			<td align="left"><s:property value="resource.updaterate"/></td>
		</tr>
		 
			<tr>
			<td class="zyxx"><span>详细描述：</span></td>
			<td align="left"><s:property value="resource.description"/></td>
		</tr>
		 
			<tr>
			<td class="zyxx"><span>数据加工方式：</span></td>
			<td align="left"><s:property value="resource.processmode"/></td>
		</tr>
	 
			<tr>
			<td class="zyxx"><span>质量描述：</span></td>
			<td align="left"><s:property value="resource.quality"/></td>
		</tr>
		<tr>
			<td class="zyxx"><span>资源图片：</span></td>
			<td align="left"><a href="<%=basePath %>download.action?fileName=<s:property value="resource.filet"/>">图片下载</a></td>
		</tr>
		
	</table>
  </div> 
  </div>
  </div>
<div class="clear"></div>
</div> 
     </div>
   <jsp:include page="../foot.jsp" flush="true"></jsp:include>
  </body>
</html>
