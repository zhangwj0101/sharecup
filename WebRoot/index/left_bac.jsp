<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="include/tags.jsp"%>

<script src="<%=basePath %>artDialog/artDialog.js?skin=default"></script>
<script src="<%=basePath %>artDialog/plugins/iframeTools.js"></script>
<script src="<%=basePath %>artDialog/plugins/iframeTools.source.js"></script>
<script src="<%=basePath %>artDialog/_doc/highlight/highlight.pack.js"></script>
<script src="<%=basePath %>artDialog/_doc/highlight/languages/javascript.js"></script>
<script type="text/javascript">
$(document).ready(function(){             
               $("#denglu").bind("click",function(){
            	  var username = $("#username").val();
            	  var password = $("#password").val();
            	  var authcode = $("#authcode").val();
            	  if(username==''){
            		 alert('请输入用户名!'); 
            	  }else if(password==''){
            		  alert('请输入密码!');
            	  }else if(authcode==''){
            	  	  alert('请输入验证码');
            	  }else{
            		  document.forms[0].submit();
            	  }
               });
         <%
         	String flag = (String)request.getAttribute("flag");
         	if(flag!=null&&!flag.equals("ok")){
         %>
         	art.dialog.open('<%=basePath %>pages/error.jsp', {title: '温馨提示：',lock:true});
         <%		
         	}
         %>
			});
</script>
<script  type="text/javascript" >
function wjmm(){    
            	 art.dialog.open('<%=basePath %>pages/wjmm.jsp',{title: '忘记密码？',lock:true});
			  }
function error(){    
            	 art.dialog.open('<%=basePath %>pages/error.jsp', {title: '温馨提示：',lock:true});
			  }
</script>
<div id="userbox">
<c:if test="${user==null||user.username==''}">
	  <div id="user">
	  <div class="u1">
	  <p class="p1" >用户注册</p>
	  <form action="<%=basePath %>loggin.action" method="post">
	  <p><span >用户名：</span><span><input name="username" id="username" class="wbk" tabindex="1"  type="text" style="height:20px; margin-left:10px;"></span></p>
	  <p><span>密　码：</span><span><input name="password" id="password" class="wbk" tabindex="1"  type="password" style="height:20px; margin-left:10px;"></span></p>
	  <p><span>验证码：</span><span><input name="authcode" id="authcode" style="height:20px; margin-left:10px;width:60px " maxlength="4" tabindex="1"  type="text"></span><span><jsp:include page="include/img.jsp" flush="true"></jsp:include></span></p>
	 <ul>
	 	<li>
	 	 <p ><span class="denglu_button"><a id="denglu" type="button"  ><img src="<%=basePath%>img/dl.png" border="0" /></a> </span><span class="zhuce_button"><a href="<%=basePath %>index/pageIndex_region.action" title="报名注册" class="bmzc"><img src="<%=basePath%>img/zc.png" border="0" alt="报名注册"></a></span></p>
	 	</li>
	 </ul>
	 	  </form>
	  </div>
	  </div>
</c:if>
<c:if test="${user!=null&&user.username!=''}">

	  <div id="user">
	  <div>&nbsp;</div>
	  <div>&nbsp;</div>
	  
	  <div class="u1"><span class="red"><a href="<%=basePath %>usercenter/index.action"><s:property value="%{#session.user.name}"/></a> </span> 您好！</div>
      <div>&nbsp;</div>
      <div class="u1">欢迎您登录共享杯竞赛官网! </div>
      <div class="u1"><a href="<%=basePath %>usercenter/index.action"><img src="<%=basePath %>style/images/user.jpg" border="0"></a>&nbsp;&nbsp;<a href="http://weibo.com/nsti" target="_blank"><img src="<%=basePath %>style/images/sina.jpg" border="0" alt="关注新浪微博"></a></div>
	  <div class="u1" ><a href="<%=basePath %>loggout.action" >退出</a></div>
	  </div>
	   
</c:if>
	   <div class="clear"></div>

<div class="dtbox">
	  <div id="side">
	  <div class="lm_s"><div class="lm_z_l" ><span class="lm_txt">最新动态<s:set value="@com.share.support.OptionsCollection@getNews()"></s:set> </span></div><div class="lm_z_r"><a class="lm_more" href="<%=basePath %>index/pageIndex_newsList.action">更多...</a></div></div>
	  <div class="lm_z">
	  <div class="lm_z_z">
	  <s:iterator value="@com.share.support.OptionsCollection@getNews()" id="news" status="i">
		  <li class="li2"><a  href="<%=basePath %>index/pageIndex_newsContent.action?id=${news.id}">${news.title}</a></li>	
	  </s:iterator>		
	   </div>
	   </div>
       </div>
</div>	  
<div class="clear"></div>

<div class="dtbox">
	   <div id="side">
	   <div class="lm_s"><div class="lm_z_l" ><span class="lm_txt">精品文库</span></div><div class="lm_z_r"><a class="lm_more" href="<%=basePath %>index/pageIndex_libraryList.action">更多...</a></div></div>
	   <div class="lm_z">
	   <div class="lm_z_z">
	   <s:iterator value="@com.share.support.OptionsCollection@getLibraries()" id="library" status="i">
	  		 <li class="li3"><a href="${library.url}" target="_blank">${library.title}</a></li>	
	   </s:iterator>
	  	
		</div>
		</div>
		</div>
</div>  
	  
    <div class="kjbbox">
	  <div class="kjbbt"><span class="kjbbt_txt">主办方</span></div>	  
	   <div class="kjb_img"><a href="http://www.most.gov.cn" target="_blank"><img src="<%=basePath %>style/images/kjb.jpg" border="0"></a></div>
	   <div class="kjb_img"><a href="http://www.moe.edu.cn" target="_blank"><img src="<%=basePath %>style/images/jss.jpg" border="0"></a></div>
	  <div class="kjbbt"><span class="kjbbt_txt">协办方</span></div>	  
	   <div class="kjb_img"><a href="http://www.nstic.gov.cn" target="_blank"><img src="<%=basePath %>style/images/pt.jpg" border="0"></a></div>
	  <div class="kjbbt"><span class="kjbbt_txt">大赛组委会</span></div>	  
	   <div class="kjb_img"><a href="http://www.escience.gov.cn" target="_blank"><img src="<%=basePath %>style/images/zwh.jpg" border="0"></a></div>
    </div>	 
</div> 
