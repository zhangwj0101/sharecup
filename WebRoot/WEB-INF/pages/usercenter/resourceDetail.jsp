<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
	<script type="text/javascript" src="<%=basePath %>js/common.js"></script>
	<script type="text/javascript">
		function check(id){
			if(confirm("下载此资源将会累计一次下载次数，确认下载吗？")){
				$.ajax({
					type: 'post',
					url: '<%=basePath %>resourceDownFTP?id='+id
				});
				return true;
			}else{
				return false;
			}			
		}
		
		function alreadyDown(id){
			if(confirm("您已经下载过此资源，继续下载不会影响下载次数，继续下载？")){
				$.ajax({
					type: 'post',
					url: '<%=basePath %>resourceDownFTP?id='+id
				});			
				return true;
			}else{
				return false;
			}			
		}
	</script>
  </head>
  <body>
    <div class="mainbox">
    	<div class="bm_bt"><span class="bmbt_txt">资源</span></div>
    	
    	       <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>${resource.name}</h3>
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
      <s:set name="headerID" value="%{#session.user.id}"></s:set>
      <s:set name="resourceID" value="%{#request.resource.id}"></s:set>
      	<div class="notification error png_bg" <c:if test="${tip!=null&&tip!=''}">style="display:block;"</c:if> <c:if test="${tip==''||tip==null}">style="display:none;"</c:if> > <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      			<div>
      			${tip}
      			</div>
    	</div>
	<table>
	    <tr>
			<td width="100" class="bm_h">数据集名称：</td>
			<td>
				${resource.name}
			</td>
		</tr>
		  <tr>
			<td width="100" class="bm_h">所属平台：</td>
			<td>
				${resource.origin}
			</td>
		</tr>
		<tr>
			<td width="100" class="bm_h">数据集内容：</td>
			<td>
				${resource.detail}
			</td>
		</tr>
		<tr>
			<td width="100" class="bm_h">项目来源：</td>
			<td>
				${resource.origin}
			</td>
		</tr>
		<tr>
			<td width="100" class="bm_h">时间范围：</td>
			<td>
				${resource.timerange}
			</td>
		</tr>
		<tr>
			<td width="100" class="bm_h">学科范围：</td>
			<td>
				${resource.sciencerange}
			</td>
		</tr>
		<!--  
		<tr>
			<td width="100" class="bm_h">数量：</td>
			<td>
				${resource.quantity}
			</td>
		</tr>
		<tr>
			<td width="100" class="bm_h">类型：</td>
			<td>
				${resource.datatype}
			</td>
		</tr>
		<tr>
			<td width="100" class="bm_h">查看工具：</td>
			<td>
				${resource.viewtool}
			</td>
		</tr>
		<tr>
			<td width="100" class="bm_h">更新频率：</td>
			<td>
				${resource.updaterate}
			</td>
		</tr>
		-->
		<tr>
			<td width="100" class="bm_h">详细描述：</td>
			<td>
				${resource.description}
			</td>
		</tr>
		<!--  
		<tr>
			<td width="100" class="bm_h">数据加工方式：</td>
			<td>
				${resource.processmode}
			</td>
		</tr>
		<tr>
			<td width="100" class="bm_h">质量描述：</td>
			<td>
				${resource.quality}
			</td>
		</tr>
		
		<tr style="display:none;">
			<td width="100" class="bm_h">资源图片：<br></td>
			<td><a target="_blank" href="<%=basePath %>download.action?filename=${resource.filet}">图片下载</a>
			<br></td>
		</tr>
		-->
		<tr>
			<td width="100" class="bm_h">资源下载：</td>
			<td>
			
			
			
				<s:if test="@com.share.support.OptionsCollection@ifDown(#headerID)">
					<s:if test="@com.share.support.OptionsCollection@thisResourceDown(#headerID,#resourceID)">
						<s:if test="#request.resource.ftp!=null&&#request.resource.ftp!=''">
							<a target="_blank" href="${resource.ftp}" id="down_sub" onclick="return alreadyDown(${resource.id});">资源下载</a>
						</s:if>
						<s:else>
							<a target="_blank" href="<%=basePath %>resourceDown.action?filename=${resource.files}&id=${resource.id}" onclick="return alreadyDown(${resource.id});">资源下载</a>
						</s:else>
					</s:if>
					<s:else>
						<s:if test="#request.resource.ftp!=null&&#request.resource.ftp!=''">
							<a target="_blank" href="${resource.ftp}" id="down_sub" onclick="return check(${resource.id});">资源下载</a>
						</s:if>
						<s:else>
							<a target="_blank" href="<%=basePath %>resourceDown.action?filename=${resource.files}&id=${resource.id}" onclick="return check(${resource.id});">资源下载</a>
						</s:else>					
					</s:else>
				</s:if><s:else>
					您的下载资源数已达10个，不能继续下载！
				</s:else>
			</td>
		</tr>
		
		
	</table>
	<!--  
	<p style="width: 200px;overflow: inherit;"><%@ include file="../include/star.jsp"%></p>
	-->
      </div>
      <!-- End .content-box-content -->
    </div>
    </div>
  </body>
</html>
