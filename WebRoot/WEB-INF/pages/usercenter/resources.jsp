<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
	<head>
		<%@ include file="../include/ui.jsp"%>
		<%@ include file="../include/head.jsp"%>
		<script type="text/javascript" src="<%=basePath%>js/common.js"></script>

		<style type="text/css">
table {
	table-layout: fixed;
}

td {
	height: 40px;
	text-overflow: ellipsis;
}
</style>
		<script type="text/javascript">


	</script>
	</head>
	<body>
		<div class="mainbox">

			<div class="notification attention png_bg">
				<a href="#" class="close"><img
						src="<%=basePath%>style/images/icons/cross_grey_small.png"
						title="Close this notification" alt="close" />
				</a>
				<div>
					${tip }
				</div>
			</div>

			<div class="content-box">
				<!-- Start Content Box -->
				<div class="content-box-header">
					<h3>
						作品列表
					</h3>
				</div>
				<!-- End .content-box-header -->
				<div class="content-box-content">
					<div class="show">
						<table id="mytable" cellspacing="0">

							<tr>

								<th scope="col">
									题目名称
								</th>
								<th scope="col" style="width: 70px;">
									上传时间
								</th>
								<th scope="col">
									作品名称
								</th>
								<th scope="col">
									删除
								</th>
							</tr>
							<s:iterator value="#request.subjects" status="st">
								<tr>
									<td>
										${subject }
									</td>
									<td>
										${uptime}
									</td>
									<td>
										<a target="_blank" title="${uptime}  ${subject }"
											href="<%=basePath%>download.action?filename=${filepath}">${filename}</a>
									</td>
									<td>
										<a
											href="<%=basePath%>upload_delete.action?id=${id * 9999 + 234 }">删除</a>
									</td>
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
