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
	</head>

	<body>
		<div class="mainbox">

			<div class="mainbox">
				<div class="bm_bt">
					<span class="bmbt_txt">参赛用户信息统计</span>
				</div>
				<div style="padding:8px;float:right;">
					<form action="<%=basePath %>platcenter/platcenter_statistics.action" name="statisticsFrom">
						<select name="field">
							<option value="1">报名人数</option>
							<option value="2">学历</option>
							<option value="3">参赛学校</option>
							<option value="4">报名方式</option>
							<option value="5">作品主题</option>
							<option value="6">所在省份</option>
							<option value="7">团队成员</option>
						</select>
						<button onclick="statisticsFrom.submit()">统计</button>
						<button onclick="window.open('<%=basePath %>platcenter/export.action?field=${area }');">导出统计信息</button>
						<%-- 
						<button onclick="window.open('<%=basePath %>platcenter/export_statistics.action');">导出统计文件</button>
						<button onclick="window.open('<%=basePath %>platcenter/export_statistics2.action');">导出统计文件(队长)</button>
						--%>
					</form>
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
								<s:iterator value="#request.statistics">
									<tr>
										<td><b><s:property value="field"/></b></td>
										<td><s:property value="count"/></td>
										<td><button onclick="window.open('<%=basePath %>platcenter/export.action?field=${area }&part=1&key='+encodeURI(encodeURI('${field }')));">导出明细</button></td>
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
