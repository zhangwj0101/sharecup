<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
<!-- 
		<link href="../../css/introduct.css" type="text/css" rel="stylesheet" />
		 -->
		<script type="text/javascript" src="<%=basePath%>js/jquery.min.js">
		</script>
		<script type="text/javascript" src="<%=basePath%>js/link.js">
		</script>
<style type="text/css">
 			.p2 {
				text-indent:2em;
				line-height:30px;
			}
			.p1 {
				font-weight:bold;
				font-size: 14px;
			}	
</style>

	<title>竞赛介绍</title>

	</head>

	<body>
		<div class="title"></div>
		<div class="line_nav">
			<jsp:include page="../../index/head.jsp" flush="true"></jsp:include>
		</div>
		
		
		
		
		
		
		
		
		
		
		<div id="box">

          	<jsp:include page="../left.jsp"></jsp:include>
            
            
            <div class="right">
            	<p class="weizhi">您现在的位置：<a href="<%=basePath %>index/pageIndex.action">首页</a>&gt;&gt;<a href="#">竞赛介绍</a></p>
                
                
                <h2 class="h_title">竞赛介绍</h2>
               
               
                <div class="p_cont">

<!--start-->

       <p style="color:#999999; font-size:16px; font-weight:bold; line-height:40px;">竞赛背景</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;国家科技基础条件平台（以下简称“国家科技平台”）是科学技术部、财政部共同推动的一项重要工作，旨在促进科技资源开放共享，服务社会科技创新。目前，国家科技平台已覆盖大型科学仪器设备、自然科技资源、科学数据、研究实验基地、科技文献等领域科技基础条件资源，为科技进步、经济和社会发展发挥重要支撑作用。</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;大学生、研究生是我国科技资源的重要生产者和使用者。为推进国家科技平台资源进校园、进院所，进一步深化科技资源开放共享工作，促进在校大学生、研究生充分利用国家科技平台资源开展科技活动，培养学生科技创新实践能力，科学技术部国家科技基础条件平台中心组织开展了“共享杯”大学生科技资源共享与服务创新实践竞赛活动。</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;2013年5月-12月，在各方共同努力下，第一届“共享杯”竞赛获得圆满成功。共有来自全国高校和研究院所的1000余个团队和个人报名参赛，大赛受到新华网、中新网、人民网、科技日报等多家媒体的关注，获奖优秀作品得到专家的高度肯定，社会反响强烈。</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;2014年5月-12月，将举办第二届“共享杯”竞赛。本届竞赛将在第一届竞赛基础上，优化比赛组织和设计模式，扩大宣传推广范围，进一步加大对选手的奖励支持力度，增强比赛吸引力。</p>
       
       <p style="color:#999999; font-size:16px; font-weight:bold; line-height:40px;">竞赛目的</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;加强大学生、研究生群体对国家科技平台和科技资源开放共享的认识和理解，提高在校学生的科技资源利用水平；为学生提供优质科技基础条件资源，开展科学研究和发明创造，提高学生科技创新能力，培养、发掘具有创新实践能力的科技优秀人才。</p>
	
	     <p style="color:#999999; font-size:16px; font-weight:bold; line-height:40px;">竞赛原则</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;竞赛坚持公平、公正、公开原则。竞赛设立竞赛组织委员会、专家委员会和竞赛组委会秘书处，实行匿名评审，竞赛所有工作流程、获奖作品等均在竞赛官方网站公布公示，同时邀请相关媒体进行监督。</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;竞赛坚持公益原则。参赛人员不需要缴纳报名费和评审费，为广大青年学子提供一个充分展示与历练的平台。</p>


       <p style="color:#999999; font-size:16px; font-weight:bold; line-height:40px;">奖项设置</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;特等奖1个，颁发荣誉证书并给予相应奖励</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;一等奖6个，颁发荣誉证书并给予相应奖励</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;二等奖12个，颁发荣誉证书并给予相应奖励</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;三等奖30个，颁发荣誉证书并给予相应奖励</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;优秀奖60个，颁发荣誉证书</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;优秀指导教师奖10个，颁发荣誉证书</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;优秀组织奖5个，颁发荣誉证书</p>
	     <br/><br/>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;为获奖学生提供到相关国家科技平台单位实习的机会。</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;获奖论文由大赛组委会向相关期刊进行推荐。</p>
	     <p class="p2">&nbsp;&nbsp;&nbsp;&nbsp;突出作品团队或个人将获得“开放课题”的后续经费支持。</p>

<!--end-->



　　　


                </div>
            </div>
          </div>			
		
		
		
		
		
		
		
		
		
		
		
		
		<div class="content" style="display:none;">
			<p style="margin-bottom: 20px;">
				<span style="color: #a3a4a4">当前位置：<a href="<%=basePath %>index/pageIndex.action"
					style="color: #a3a4a4; text-decoration: none;">首页 > </a>
				</span>
				<a href="<%=basePath %>index/pageIndex_intro.action" style="color: #5cabe1; text-decoration: none;">竞赛介绍</a>
			</p>
			<div class="left">
			   <h2 class="h2">竞赛介绍</h2>
       <p style="color:#999999; font-size:16px; font-weight:bold; line-height:40px;">大赛目的</p>
	     <p class="p2"> 加强大学生群体对国家科技资源共享事业和国家科技基础条件平台的认识和理解，进一步营造科技资源共享氛围；为大学生提供国家优质科技基础条件资源，培养大学生创新品质和实践能力，鼓励大学生开展科学研究和发明创造；给青年学子搭建理论联系实际、展示才华的实践舞台，为我国发掘和培养更多科技优秀人才。	       </p>
	     <p style="color:#999999; font-size:16px; font-weight:bold; line-height:40px;">竞赛原则	       </p>
	     <p class="p2">竞赛坚持公平、公正、公开原则。竞赛设立竞赛组织委员会、专家评委会和竞赛组委会秘书处，以保证竞赛公平；竞赛采用网络展示、匿名评审、结果公示等方式，做到竞赛公正；所有的程序、通知等及时在竞赛的官方网站公布，同时邀请媒体配合、监督，实现竞赛公开。
	       竞赛坚持公益原则，参赛人员不需要缴纳报名费和评审费。竞赛努力为广大青年学子提供一个展示与历练的平台。 </p>

			</div>
			<div class="right">
				<div class="register">
					<jsp:include page="../../index/left.jsp" flush="true"></jsp:include>

				</div>
				<div class="question">
					<p class="p1">
						常见问题
					</p>
					<div class="q">
						<p>
							Q：密码丢失怎样找回？
							<br />
							A：请输入您注册用的邮箱地址，系统会将重置密码的链接发送到您注册用的邮箱中。
							<br />
							Q：怎样报名？
							<br />
							A：注册用户填写报名申请表
							<br />
							Q：哪里查看报名流程？
							<br />
							A：点击进入竞赛流程页面方可查看报名流程
						</p>
					</div>

				</div>
				<div>
					<jsp:include page="../depart.jsp"></jsp:include>

				</div>


			</div>
		</div>

<!--    <div class="footer">
			版权所有：国家科技基础条件平台中心 | 京ICP备09051888号
		</div>
-->		

<jsp:include page="../foot.jsp"></jsp:include>

	</body>
</html>
