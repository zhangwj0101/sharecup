<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="index/include/tags.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<title>第三届大学生科技资源共享与服务创新实践竞赛</title>
	</head>

	<body>
    <div id="main_line">
      <div id="main">
        <div id="content">
  	 <!-- head -->
  	 <jsp:include page="index/head.jsp" flush="true"></jsp:include>
  	 
	<script src="<%=basePath%>js/jquery.js" type="text/javascript"></script>
	<script src="<%=basePath%>js/accordion.js" type="text/javascript"></script>
	<script src="<%=basePath%>js/cycle.js" type="text/javascript"></script>
	<script src="<%=basePath%>js/jquery.lazyload.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	<!--
		// Accordion
		jQuery().ready(function(){
			jQuery('#serviceContent').accordion({
			autoheight: false
			});
		});
		// Cycle
		$(function() {
			$('#fW_Content').cycle({ 
			fx:    'scrollLeft',
			pager: '#fW_Controls'
 			});
		});
	//-->
	</script> 

     <!-- head -->
     <div id="l_cont">
            <div id="con_2">

              <div class="t1">
                <h2><span>竞赛通告</span></h2>
                <ul class="t_list">
                <s:if test="#request.newslist2!=null">
                <s:iterator value="#request.newslist2" status="i">
             
                <s:if test="#i.index<=8">
                  <li><a href="../getNewsById?id=<s:property value="id"/>"><s:property value="title"/></a></li>
                </s:if>
     
                </s:iterator>
                </s:if>
                </ul>
              </div>            

			<!-- 
              <div class="t1" style="margin-top:10px;">
                <h2><span>往届回顾</span><a href="<%=basePath %>Historyreview1.html">more</a></h2>
                <ul class="t_list">
                  <li><a href="../getNewsById?id=48">获奖作品公示</a></li>
                  <li><a href="../getNewsById?id=50">首届大学生科技资源共享与创新实践竞赛圆满结束</a></li>
                </ul>
              </div> 
            -->
              <div class="t1" style="margin-top:10px;">
                <h2><span>往届回顾</span><a href="<%=basePath %>Historyreview1.html">more</a></h2>
                <ul class="t_list">
                <s:if test="#request.newslist3!=null">
	                <s:iterator value="#request.newslist3" status="i">
		                <s:if test="#i.index<=2">
		                  <li><a href="../getNewsById?id=<s:property value="id"/>"><s:property value="title"/></a></li>
		                </s:if>
	                </s:iterator>
                </s:if>
                </ul>
              </div> 
                           
            </div>
            <div id="l_Content"> 
              <!--图片切换-->
              <div id="newspic">
                <div id="pic">
                  <div class="pic_list" id="fW_Content">
                <!--<s:if test="#request.newslist!=null">
                <s:iterator value="#request.newslist" status="i">
                <c:if test="${content_pic != null && content_pic != ''}">
                <s:if test="#i.index<=3">
                    <div class="qiehuan"> <img src="<s:property value="src[0]"/> "/>
                      <p class="text"><a href="../getNewsById?id=<s:property value="id"/>"><s:property value="title"/></a></p>
                    </div>
                </s:if>
                </c:if>
                </s:iterator>
                </s:if>
					 -->

                  	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/1.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/2.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/3.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/4.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/5.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/6.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/7.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/8.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/9.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/10.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/11.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    	<div class="qiehuan"> 
						<img src="<%=basePath %>img/index/20150908/12.jpg"/>
						<p class="text" style="display:none;"><a href="#">会场</a></p>
                    </div>
                    
                  
					
                  </div>
                  <div id="fW_Controls"></div>
                </div>
              </div>
              <!--图片切换--> 
            </div>
            <div id="con_2">

              <div class="t1">
                <h2><span>竞赛新闻</span><a href="<%=basePath %>index/pageIndex_share.action">more</a></h2>
                <ul class="t_list">
                  <s:if test="#request.newslist1!=null">
                <s:iterator value="#request.newslist1" status="i">
          
                <s:if test="#i.index<=8">
                  <li><a href="../getNewsById?id=<s:property value="id"/>"><s:property value="title"/></a></li>
                </s:if>

                </s:iterator>
                </s:if>
                </ul>
              </div>

            </div>
            
            <div style="clear:both;"></div>
            
            <div class="con_23">
              <div class="t13">
                <h2><span>参赛条件</span><a href="<%=basePath %>index/pages/flow/2.jsp">detail</a></h2>
                <div class="t_list">
                  <p>全国所有高校和相关研究院所的在读本科生、研究生、博士生都可以个人或团队形式（队员数量不得超过5人）参加竞赛。</p>
                  <p>参赛团队和个人可根据需要，邀请1-2名指导教师给予指导帮助。 </p>
                </div>
              </div>
            </div>
            <div class="con_23">
              <div class="t13">
                <h2><span>竞赛流程</span><a href="<%=basePath %>index/pages/flow/1.jsp">detail</a></h2>
                <div class="t_list">
                   <p>1、报名 参赛人员直接在本网站“我要报名”栏目填写相关信息，获得参赛账号密码。</p>
                   <p>2、单位组织报名。参赛高校和研究院所组织本单位学生参赛，收集参赛学生姓名、参赛题目等信息，通过大赛官网提交，由大赛承办单位进行资格确认后，统一分配账号密码。</p>
                </div>
              </div>
            </div>
            <div class="con_23">
              <div class="t13">
                <h2><span>评选规则</span><a href="<%=basePath %>index/pages/flow/4.jsp">detail</a></h2>
                <div class="t_list">
                  <p>为了保证公平、公正、公开、原创的原则，2015年11月中旬入围的候选作品名单将在竞赛的官方网站展示，同时评委会将对作品进行评审，12月将在官方网站公布获奖作品名单，公示期限为10天。</p>
                </div>
              </div>
            </div>
            <div class="con_23" style="margin-right:0;">
              <div class="t13">
                <h2><span>答疑解惑</span><a href="<%=basePath %>index/pageIndex_qa.action">more</a></h2>
                <ul class="t_list" id="bceia_cont1_list">
                <s:if test="#request.qalist!=null">
	                <s:iterator value="#request.qalist" status="i">
	                <s:if test="#i.index<=1">
	                 <li>Q：<s:property value="question"/> </li> 
					 <li>A：<s:property value="answer"/> </li>
					</s:if>
					</s:iterator>
				</s:if>
                </ul>
              </div>
            </div>
            
            <div id="nav_link">
             <div class="nav_class" style="height:130px;">
              <ul>
               <li><a class="title1" href="<%=basePath %>index/pages/mainpart.jsp">主办单位</a></li>
               <li><a target="_blank" href="http://nstic.gov.cn/">国家科技基础条件平台中心</a></li>
              </ul>
              <ul>
               <li><a class="title1" href="<%=basePath %>index/pages/applypart.jsp">承办单位</a></li>
               <li><a href="">国家科技资源共享服务工程技术研究中心</a></li>
               <li><a href="">国家科技基础条件平台信息技术中心</a></li>
              </ul>              
              <ul style="background:none;">
               <li><a class="title1" href="<%=basePath %>index/pages/helppart.jsp">协办单位</a></li>
               <li><a target="_blank" href="http://www.sgst.cn/">上海市研发公共服务平台管理中心</a></li>
               <li><a target="_blank" href="http://www.hljsti.cn/sy/index.html">黑龙江省科技信息中心</a></li>
               <li><a target="_blank" href="">广东省科技基础条件平台中心</a></li>
               <li><a target="_blank" href="">陕西省科技资源统筹中心</a></li>
               <li><a target="_blank" href="http://www.yqgx.org/">江苏省大型科学仪器开放共享平台</a></li>
               <li><a target="_blank" href="<%=basePath %>index/pages/link/23.jsp">23家国家科技资源平台</a></li>
              </ul>
              <p class="flying"></p>
             </div>
            </div>
          
          </div>
          
          <jsp:include page="index/foot.jsp" flush="true"></jsp:include>
        </div>
      </div>
    </div>
    <script type="text/javascript">
		/**判断浏览器类型**/
		function broswer(){
		    var Sys = {};
		    var ua = navigator.userAgent.toLowerCase();
		    var s;
		    (s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] :
		    (s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] :
		    (s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] :
		    (s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] :
		    (s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0;
		 
		    /**以下进行测试**/
		    if (Sys.ie) return {'type':'ie','version':Sys.ie};
		    if (Sys.firefox) return {'type':'firefox','version':Sys.firefox};
		    if (Sys.chrome) return {'type':'chrome','version':Sys.chrome};
		    if (Sys.opera) return {'type':'opera','version':Sys.opera};
		    if (Sys.safari) return {'type':'safari','version':Sys.safari};
		}    
		var nav = broswer();
		if(nav.type!='ie' && nav.type!='firefox' && nav.type!='chrome'){
			art.dialog('建议您使用Chrome、Firefox、IE8.0以上版本的浏览器');
		}
    </script>
    
	<script type="text/javascript">
		var tip = "<%=session.getAttribute("tip") %>";
		if(tip!=''&&tip!='null'){alert(tip);}
	</script>   
	
	<script type="text/javascript">
		artDialog.notice = function (options) {
		    var opt = options || {},
		        api, aConfig, hide, wrap, top,
		        duration = 800;
		        
		    var config = {
		        id: 'Notice',
		        left: '100%',
		        top: '100%',
		        fixed: true,
		        drag: false,
		        resize: false,
		        follow: null,
		        lock: false,
		        init: function(here){
		            api = this;
		            aConfig = api.config;
		            wrap = api.DOM.wrap;
		            top = parseInt(wrap[0].style.top);
		            hide = top + wrap[0].offsetHeight;
		            
		            wrap.css('top', hide + 'px')
		                .animate({top: top + 'px'}, duration, function () {
		                    opt.init && opt.init.call(api, here);
		                });
		        },
		        close: function(here){
		            wrap.animate({top: hide + 'px'}, duration, function () {
		                opt.close && opt.close.call(this, here);
		                aConfig.close = $.noop;
		                api.close();
		            });
		            
		            return false;
		        }
		    };	
		    
		    for (var i in opt) {
		        if (config[i] === undefined) config[i] = opt[i];
		    };
		    
		    return artDialog(config);
		};	
		art.dialog.notice({
		    title: '温馨提示',
		    width: 220,// 必须指定一个像素宽度值或者百分比，否则浏览器窗口改变可能导致artDialog收缩
		    content: "<a href='http://www.escience.gov.cn/' target='_blank'>中国科技资源共享网</a><br/><br/><a href='http://218.241.236.81:8080/nsti_share_directory/toIndex.do' target='_blank'>国家科技基础条件平台科技资源开放共享目录</a>",
		    time: 10
		});	
	</script>  
	
	<!-- 浮动广告 -->
 <script type="text/javascript">
 <!--
//公共脚本文件 main.js
function addEvent(obj,evtType,func,cap){
    cap=cap||false;
 if(obj.addEventListener){
     obj.addEventListener(evtType,func,cap);
  return true;
 }else if(obj.attachEvent){
        if(cap){
	         obj.setCapture();
	         return true;
	     }else{
		      return obj.attachEvent("on" + evtType,func);
		  }
 }else{
  return false;
    }
}
function getPageScroll(){
    var xScroll,yScroll;
 if (self.pageXOffset) {
  xScroll = self.pageXOffset;
 } else if (document.documentElement && document.documentElement.scrollLeft){
  xScroll = document.documentElement.scrollLeft;
 } else if (document.body) {
  xScroll = document.body.scrollLeft;
 }
 if (self.pageYOffset) {
  yScroll = self.pageYOffset;
 } else if (document.documentElement && document.documentElement.scrollTop){
  yScroll = document.documentElement.scrollTop;
 } else if (document.body) {
  yScroll = document.body.scrollTop;
 }
 arrayPageScroll = new Array(xScroll,yScroll);
 return arrayPageScroll;
}
function GetPageSize(){
    var xScroll, yScroll;
    if (window.innerHeight && window.scrollMaxY) { 
        xScroll = document.body.scrollWidth;
        yScroll = window.innerHeight + window.scrollMaxY;
    } else if (document.body.scrollHeight > document.body.offsetHeight){
        xScroll = document.body.scrollWidth;
        yScroll = document.body.scrollHeight;
    } else {
        xScroll = document.body.offsetWidth;
        yScroll = document.body.offsetHeight;
    }
    var windowWidth, windowHeight;
    if (self.innerHeight) {
        windowWidth = self.innerWidth;
        windowHeight = self.innerHeight;
    } else if (document.documentElement && document.documentElement.clientHeight) {
        windowWidth = document.documentElement.clientWidth;
        windowHeight = document.documentElement.clientHeight;
    } else if (document.body) {
        windowWidth = document.body.clientWidth;
        windowHeight = document.body.clientHeight;
    } 
    if(yScroll < windowHeight){
        pageHeight = windowHeight;
    } else { 
        pageHeight = yScroll;
    }
    if(xScroll < windowWidth){ 
        pageWidth = windowWidth;
    } else {
        pageWidth = xScroll;
    }
    arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight) 
    return arrayPageSize;
}
//广告脚本文件 AdMove.js
/*
例子
<div id="Div2">
    ***** content ******
</div>
var ad=new AdMove("Div2");
ad.Run();
*/
////////////////////////////////////////////////////////
var AdMoveConfig=new Object();
AdMoveConfig.IsInitialized=false;
AdMoveConfig.ScrollX=0;
AdMoveConfig.ScrollY=0;
AdMoveConfig.MoveWidth=0;
AdMoveConfig.MoveHeight=0;
AdMoveConfig.Resize=function(){
    var winsize=GetPageSize();
    AdMoveConfig.MoveWidth=winsize[2];
    AdMoveConfig.MoveHeight=winsize[3];
    AdMoveConfig.Scroll();
}
AdMoveConfig.Scroll=function(){
    var winscroll=getPageScroll();
    AdMoveConfig.ScrollX=winscroll[0];
    AdMoveConfig.ScrollY=winscroll[1];
}
addEvent(window,"resize",AdMoveConfig.Resize);
addEvent(window,"scroll",AdMoveConfig.Scroll);
function AdMove(id){
    if(!AdMoveConfig.IsInitialized){
        AdMoveConfig.Resize();
        AdMoveConfig.IsInitialized=true;
    }
    var obj=document.getElementById(id);
    obj.style.position="absolute";
    var W=AdMoveConfig.MoveWidth-obj.offsetWidth;
    var H=AdMoveConfig.MoveHeight-obj.offsetHeight;
    var x = W*Math.random(),y = H*Math.random();
    var rad=(Math.random()+1)*Math.PI/6;
    var kx=Math.sin(rad),ky=Math.cos(rad);
    var dirx = (Math.random()<0.5?1:-1), diry = (Math.random()<0.5?1:-1);
    var step = 1;
    var interval;
    this.SetLocation=function(vx,vy){x=vx;y=vy;}
    this.SetDirection=function(vx,vy){dirx=vx;diry=vy;}
    obj.CustomMethod=function(){
        obj.style.left = (x + AdMoveConfig.ScrollX) + "px";
        obj.style.top = (y + AdMoveConfig.ScrollY) + "px";
        rad=(Math.random()+1)*Math.PI/6;
        W=AdMoveConfig.MoveWidth-obj.offsetWidth;
        H=AdMoveConfig.MoveHeight-obj.offsetHeight;
        x = x + step*kx*dirx;
        if (x < 0){dirx = 1;x = 0;kx=Math.sin(rad);ky=Math.cos(rad);} 
        if (x > W){dirx = -1;x = W;kx=Math.sin(rad);ky=Math.cos(rad);}
        y = y + step*ky*diry;
        if (y < 0){diry = 1;y = 0;kx=Math.sin(rad);ky=Math.cos(rad);} 
        if (y > H){diry = -1;y = H;kx=Math.sin(rad);ky=Math.cos(rad);}
    }
    this.Run=function(){
        var delay = 10;
        interval=setInterval(obj.CustomMethod,delay);
        obj.onmouseover=function(){clearInterval(interval);}
        obj.onmouseout=function(){interval=setInterval(obj.CustomMethod, delay);}
    }
}
 //-->
 </script>
    <div id="gg1" style="width:100px;height:100px;background-color:#1C86EE;z-index:999999;">
     	<!--  <a href="http://share.escience.gov.cn/getNewsById?id=77" target="_blank"><img src="<%=basePath %>img/index/huojiang.jpg"/></a> -->
     	<img src="<%=basePath %>img/index/float3.png"/>
    </div> 
    <script type="text/javascript">
    <!--
        var ad1=new AdMove("gg1");
        ad1.Run();
    //-->
    </script>
</body>
</html>