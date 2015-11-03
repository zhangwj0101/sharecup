<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="tags.jsp"%>

<div class="left">
            	<div class="login">
                	<h2>用户登录</h2>
                    <table cellpadding="0" cellspacing="0">
                    
<c:if test="${user==null||user.username==''}">
	                    	<tr>
                        	<td>用户名：</td>
                            <td><input type="text" name="username" value="" /></td>
                        </tr>
                        <tr>
                        	<td>密&nbsp;&nbsp;&nbsp;码：</td>
                            <td><input type="password" name="password" value="" /></td>
                        </tr>
                         <tr>
                        	<td>验证码：</td>
                            <td><input name="authcode" style="width: 50px;" maxlength="4" tabindex="1" type="text"><jsp:include page="img.jsp" flush="true"></jsp:include></td>
                        </tr>
                        <tr>
                        	<td>&nbsp;</td>
                            <td><a href="#">登录</a><a href="#">注册</a></td>
                        </tr>
</c:if>
<c:if test="${user!=null&&user.username!=''}">
	<span style="float:right; line-height:32px;"><a href="<%=basePath %>usercenter/index.action"><s:property value="%{#session.user.name}"/></a><a href="<%=basePath %>loggout.action" >退出</a></span>
</c:if>                       
                    

                    </table>
                </div>
                <div class="t_h" style="margin: 10px 0;">
                	<h2>竞赛指南</h2>
                    <ul>
                    	<li class="curren_li"><a href="#">竞赛条件</a></li>
                        <li><a href="#">报名渠道及方式</a></li>
                        <li><a href="#">赛程安排</a></li>
                        <li><a href="#">评审流程</a></li>
                        <li><a href="#">参赛资料下载</a></li>
                        <li><a href="#">问题解答</a></li>
                    </ul>
                </div>
                <p class="bm"><a href="#">报名参加</a></p>
            </div>