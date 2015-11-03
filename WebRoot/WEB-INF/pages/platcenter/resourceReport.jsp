<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../include/tags.jsp"%>

<html>
  <head>
	<%@ include file="../include/ui.jsp"%>
	<%@ include file="../include/head.jsp"%>
	<script type="text/javascript" src="<%=basePath %>js/file.js"></script>
	<script type="text/javascript">
		
		$("input:file").fileEveryWhere(null);
	</script>
  </head>
  
  <body>
  	<div class="mainbox">
          
          	<div class="bm_bt"><span class="bmbt_txt">资源上报</span></div>
    	
      	  <div class="content-box">
      <!-- Start Content Box -->
      <div class="content-box-header">
        <h3>资源上报</h3>
        
      </div>
      <!-- End .content-box-header -->
      <div class="content-box-content">
        <form action="<%=basePath%>platcenter/platcenter_saveResource.action" method="post" name="upload_resource" enctype ="multipart/form-data" >
       		 <fieldset>
       		<div class="notification error png_bg" <c:if test="${tip!=null&&tip!=''}">style="display:block;"</c:if> <c:if test="${tip==''||tip==null}">style="display:none;"</c:if> > <a href="#" class="close"><img src="<%=basePath %>style/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
      			<div>
      			${tip}
      			</div>
    		</div>
    		<a target="_blank" style="display:none;margin-left:500px;" href="<%=basePath%>resourceDown.action?filename=D:\info\intro.doc">
    			下载填报说明
    		</a>
    		<s:property value=""/>
    			<input type="hidden" name="resource.id" value='<s:property value="resource.id"/>'/>
    		<table id="table1">
    		
				<tr class="tr1">
					<td width="100" class="bm_h">数据集名称：</td>
					<td>
					<input class="text1" type="text"  id="name" name="resource.name" value='<s:property value="resource.name"/>'/>&nbsp;&nbsp;<span id="nametip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr class="tr1">
					<td width="100" class="bm_h">数据内容：</td>
					<td>
					<input class="text1" type="text" id="detail" name="resource.detail" value='<s:property value="resource.detail"/>'/>&nbsp;&nbsp;<span id="detailtip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr class="tr1">
					<td width="100" class="bm_h">项目来源：</td>
					<td>
					<input class="text1" type="text" id="origin" name="resource.origin" value='<s:property value="resource.origin"/>'/>&nbsp;&nbsp;<span id="origintip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr class="tr1"> 
					<td width="100" class="bm_h">时间范围：</td>
					<td>
					<input class="text1" type="text" id="timerange" name="resource.timerange" value='<s:property value="resource.timerange"/>'/>&nbsp;&nbsp;<span id="timerangetip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr class="tr1"> 
					<td width="100" class="bm_h">学科范围：</td>
					<td>
					<input class="text1" type="text" id="sciencerange" name="resource.sciencerange" value='<s:property value="resource.sciencerange"/>'/>&nbsp;&nbsp;<span id="sciencerangetip"><font color="red">*</font></span>
					</td>
				</tr>
				<!-- 
				<tr class="tr1">
					<td width="100" class="bm_h">数量：</td>
					<td>
					<input class="text1" type="text" id="quantity" name="resource.quantity" value='<s:property value="resource.quantity"/>'/>&nbsp;&nbsp;<span id="quantitytip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr class="tr1">
					<td width="100" class="bm_h">类型：</td>
					<td>
					<input class="text1" type="text" id="datatype" name="resource.datatype" value='<s:property value="resource.datatype"/>'/>&nbsp;&nbsp;<span id="datatypetip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr class="tr1">
					<td width="100" class="bm_h">查看工具：</td>
					<td>
					<input class="text1" type="text" id="viewtool" name="resource.viewtool" value='<s:property value="resource.viewtool"/>'/>&nbsp;&nbsp;<span id="viewtooltip"><font color="red">*</font></span>
					</td>
				</tr>
				<tr class="tr1">
					<td width="100" class="bm_h">更新频率：</td>
					<td>
					<input class="text1" type="text" id="updaterate" name="resource.updaterate" value='<s:property value="resource.updaterate"/>'/>&nbsp;&nbsp;<span id="updateratetip"><font color="red">*</font></span>
					</td>
				</tr>
				 -->
				<tr class="tr1">
					<td width="100" class="bm_h">详细描述：</td>
					<td>
					<textarea rows="4" cols="50" name="resource.description" id="description"><s:property value="resource.description"/></textarea>&nbsp;&nbsp;<span id="sepasswordtip">
					</td>
				</tr>
				<!-- 
				<tr class="tr1">
					<td width="100" class="bm_h">数据加工方式：</td>
					<td>
					<textarea rows="4" cols=""50 name="resource.processmode" id="processmode"><s:property value="resource.processmode"/></textarea>&nbsp;&nbsp;<span id="sepasswordtip">
					</td>
				</tr>
				<tr class="tr1">
					<td width="100" class="bm_h">质量描述：</td>
					<td>
					<textarea rows="4" cols="50" name="resource.quality" id="quality"><s:property value="resource.quality"/></textarea>&nbsp;&nbsp;<span id="sepasswordtip">
					</td>
				</tr>
				
				<tr class="tr1" style="display:none;">
					<td width="100" class="bm_h">上传图片：</td>
					<td>
					<input type="file" id="upload1" name="upload1" />&nbsp;&nbsp;<span id="sepasswordtip"><font color="red">*</font></span>
					</td>
				</tr>
				 -->
				<tr class="tr1">
					<td width="100" class="bm_h">上传数据集：</td>
					<td>
					<input type="file" id="upload2" name="upload2" />&nbsp;&nbsp;<span id="sepasswordtip"><font color="red">**</font></span>
					</td>
				</tr>
				<tr class="tr1">
					<td width="100" class="bm_h">FTP链接地址：</td>
					<td>
					<input width="300" type="text" id="ftp" name="resource.ftp" value='<s:property value="resource.ftp"/>'/>&nbsp;&nbsp;<span id="sepasswordtip"><font color="red">**</font></span>
					</td>
				</tr>
				<tr class="tr1">
					<td width="100" class="bm_h"></td>
					<td style="color:#c3c3c3;">(&nbsp;&nbsp;FTP地址: ftp://218.241.236.82&nbsp;&nbsp;&nbsp;&nbsp;用户名：mengcj&nbsp;&nbsp;&nbsp;&nbsp;密码：ABCabc123&nbsp;&nbsp;)</td>
				</tr>								
			</table>
			<br/>	
      		  <p style="margin-left:100px;"><input class="button" style="width:30px;" onclick="return check_val();" value="保存" />&nbsp;&nbsp;&nbsp;&nbsp;<input class="button" type="reset" value="重置" /></p>
      		 </fieldset>
      	</form>
      	<script type="text/javascript">
			function check_val(){
				var  name = $('#name').val();
				var  detail = $('#detail').val();
				var  origin = $('#origin').val();
				var  timerange = $('#timerange').val();
				var  sciencerange = $('#sciencerange').val();
				//var  quantity = $('#quantity').val();
				//var  datatype = $('#datatype').val();
				//var  viewtool = $('#viewtool').val();
				//var  updaterate = $('#updaterate').val();
				var  upload2 = $('#upload2').val();
				var  ftp = $('#ftp').val();
	
				if(!name || !detail || !origin || !timerange || !sciencerange/** || !quantity || !datatype || !viewtool || !updaterate**/){
					alert('请填写必填信息！');
					return false;
				}
	
				if(!upload2 && !ftp){
					alert('请上传数据集或者提供数据的ftp下载地址！');
					return false;				
				}
	
				document.upload_resource.submit();
			}
      	</script>
      </div>
      <!-- End .content-box-content -->
    </div>
    
    
  	</div>
  </body>
</html>
