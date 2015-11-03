<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
	<script type="text/javascript" src="<%=basePath %>js/common.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/lhgdialog/lhgdialog.js"></script>
	
	<style type="text/css">
	
table {table-layout:fixed;}
td {height: 40px; text-overflow: ellipsis;}

	</style>
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
		
		$(function(){
			$('.content-box-content .apply').click(function(){
				$.dialog({
				    lock: true,
				    title:'资源申请',
				    opacity: 0.5,       /* 透明度 */
				    content: "<form id='apply_ui_form' action='<%=basePath %>usercenter/usercenter_resourceApply.action'><p style='margin-top:10px;line-height:25px;'><span style='display:inline-block;width:120px;'>资源名称：</span><input type='text' id='resource_title' name='resource_title'></p><p style='margin-top:10px;line-height:25px;'><span style='display:inline-block;width:120px;'>资源所属平台：</span><input type='text' id='resource_platform' name='resource_platform'></p></form>",
					button: [
					        {
					            name: '提交申请',
					            callback: function () {
					                $('#apply_ui_form').submit();
					            },
					            focus: true
					        },
					        {
					            name: '关闭'
					        }
					    ]
				});
			});
			
		  	<s:if test="#request.applyok != null">
		  		$.dialog({title:'申请已经提交'});
		  	</s:if>			
			
		});
	</script>	
  </head>
  <body>
    <div class="mainbox">
    	<div class="bm_bt"><span class="bmbt_txt">资源列表</span></div>

      <div class="content-box-content">
      		<p style="text-indent: 2em;font-size: 18px;">
      			为了确保本网资源的合理有效地利用，凡在本网注册的正式用户（即已经确认注册链接的用户），均可在资源列表中下载所需资源，每个帐号只有10次下载机会，如果还需要更多的资源请点击
      			<a target="_blank" href="<%=basePath%>upload/resource/apply.doc">【申请资源】</a>
      			<%-- <a class="apply" href="javascript:void(0);">【申请资源】</a> --%>
      		</p>
      </div>
    	
   <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>资源列表</h3>
 		<div style="padding:8px;float:right;">
			<form name="searchFrom" action="<%=basePath %>usercenter/usercenter_resourceDownload.action" id="searchFrom" accept-charset="utf-8" style="display:inline-block;">
				<select name="field" id="searchField">
					<option value="1">题目名称</option>
					<option value="2">所属平台</option>
				</select>
				<input type="text" name="searchWord" id="searchWord" >
			</form>
			<button onclick="submit()">查找</button>
			<script type="text/javascript">
				function submit(){
					$('#searchWord').val(encodeURI($('#searchWord').val()));
					searchFrom.submit();
				}
			</script>
		</div> 
		
		        
      </div>
    	    <!-- End .content-box-header -->
      <div class="content-box-content">
				<div class="show">	
				  	<table id="mytable" cellspacing="0">

<tr>

<th scope="col" >题目名称</th>
<th scope="col" >所属平台</th>
<th scope="col" style="width:70px;">浏览量</th>
<th scope="col" style="width:70px;">下载量</th>
<th scope="col" >下载</th>
<th scope="col" >查看</th>

</tr>
<s:iterator  value="%{#request.resourcelist}" id="resource" status="i">
<tr>

<th scope="row" abbr="Model" class="spec"><a href="<%=basePath %>usercenter/usercenter_resourceDetail.action?id=${resource.id}">${resource.name}</a></th>

<td>${resource.origin }</td>
<td><s:if test="%{#request.resource.sourceBrowse==null}">0</s:if><s:else>${resource.sourceBrowse.browseNum}</s:else></td>
<td>${fn:length(resource.sourceDowns)}</td>



<s:set name="headerID" value="%{#session.user.id}"></s:set>
<s:set name="resourceID" value="%{#request.resource.id}"></s:set>

<s:if test="@com.share.support.OptionsCollection@ifDown(#headerID)">
	<s:if test="@com.share.support.OptionsCollection@thisResourceDown(#headerID,#resourceID)">
		<s:if test="#request.resource.ftp!=null&&#request.resource.ftp!=''">
			<td><a target="_blank" href="${resource.ftp}" id="down_sub" onclick="return alreadyDown(${resource.id});">点击下载</a></td>
		</s:if>
		<s:else>
			<td><a target="_blank" href="<%=basePath %>resourceDown.action?filename=${resource.files}&id=${resource.id}" onclick="return alreadyDown(${resource.id});">点击下载</a></td>
		</s:else>
	</s:if>
	<s:else>
		<s:if test="#request.resource.ftp!=null&&#request.resource.ftp!=''">
			<td><a target="_blank" href="${resource.ftp}" id="down_sub" onclick="return check(${resource.id});">点击下载</a></td>
		</s:if>
		<s:else>
			<td><a target="_blank" href="<%=basePath %>resourceDown.action?filename=${resource.files}&id=${resource.id}" onclick="return check(${resource.id});">点击下载</a></td>
		</s:else>					
	</s:else>
</s:if>
<s:else>
	<td><a href="javascript:void(0);" onclick="alert('您的下载资源数已达10个，不能继续下载！')" style="color:#eee;">点击下载</a></td>
</s:else>



<td><a href="<%=basePath %>usercenter/usercenter_resourceDetail.action?id=${resource.id}" >查看详情</a></td>

</tr>
</s:iterator>

</table>
  	</div>
   <div class="page">当前第${pageBean.pagenum}页,共${pageBean.pagecount}页 <a href="javascript:PageTurning(${pageBean.pagesize },1,${pageBean.pagecount },'false');">首页</a><c:if test="${pageBean.pagenum ne 1 }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum-1 },${pageBean.pagecount },'false');">上一页</a></c:if><c:if test="${pageBean.pagenum lt pageBean.pagecount }"> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagenum+1 },${pageBean.pagecount },'false');">下一页</a></c:if> <a href="javascript:PageTurning(${pageBean.pagesize },${pageBean.pagecount },${pageBean.pagecount },'false');">末页</a></div> 
      </div>
      <!-- End .content-box-content -->
    </div>

    
    
    <div class="notification error png_bg"> <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      <div><p style="font-size: 14px;"> <span style="color: red;">资源来源范围：</span><a href="http://www.escience.gov.cn" target="_blank">中国科技资源共享网(www.escience.gov.cn)</a></p></div>
    </div>
    	
    </div>
    
       
    <form id="pageForm" action="<%=basePath %>usercenter/usercenter_resourceDownload.action" method="post">
					<input type="hidden" name="pageBean.pagesize" id="pageSize" value="${pageBean.pagesize }" />
					<input type="hidden" name="pageBean.pagenum" id="pageNum"  value="${pageBean.pagenum}" />
  </form>
    	
  </body>
</html>
