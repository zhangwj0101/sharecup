<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script language="javascript"> 
var sArray = new Object; 
sArray[0] = new Image; 
sArray[0].src = "<%=basePath%>style/images/1.gif"; 
for (var i=1; i<6; i++) { 
sArray[i] = new Image(); 
sArray[i].src = "<%=basePath%>style/images/2.gif"; 
} 
var starTimer; 
var pro ; 
var rate ; 
function initStar() { 
try { 
setProfix("star_"); 
setStars(document.getElementById("rating").value,'rating'); 
} catch(e){ 
} 
} 
function showStars(starNum,rate) { 
try { 
clearStarTimer(); 
greyStars(); 
colorStars(starNum); 
} catch(e){} 
//setStars(starNum,rate); 
} 
function setProfix(profix) { 
pro = profix ; 
} 
function colorStars(starNum) { 
try { 
for (var i=1; i <= starNum; i++) { 
var tmpStar = document.getElementById(pro + i); 
tmpStar.src = sArray[starNum].src; 
} 
} catch(e){} 
} 
function greyStars() { 
try { 
for (var i=1; i<6; i++) { 
var tmpStar = document.getElementById(pro + i); 
tmpStar.src = sArray[0].src; 
} 
} catch(e){} 
} 
function greyAll(curpro,currate) { 
try { 
document.getElementById(currate).value =""; 
for (var i=1; i<6; i++) { 
var tmpStar = document.getElementById(curpro + i); 
tmpStar.src = sArray[0].src; 
} 
} catch(e){} 
} 
function setStars(starNum,rate) { 
rate = rate ; 
try { 
clearStarTimer(); 
var rating = document.getElementById(rate); 
rating.value = starNum; 
showStars(starNum); 
} catch(e){} 
} 
function clearStars(currate) { 
rate = currate ; 
try { 
var rating = document.getElementById(rate); 
if (rating.value != '') { 
setStars(rating.value,rate); 
} else { 
greyStars(); 
} 
} catch(e){} 
} 
function resetStars() { 
try { 
clearStarTimer(); 
var rating = document.getElementById(rate); 
if (rating.value != '') { 
setStars(rating.value,rate); 
} else { 
greyStars(); 
} 
} catch(e){} 
} 
function clearStarTimer() { 
if (starTimer) { 
clearTimeout(starTimer); 
starTimer = null; 
} 
} 
</script> 
<form name="formappraisement" action="<%=basePath %>usercenter/resourceStar.action" method="post"> 
<input id="rating" name="rating" type="hidden">
<input name="id" value="${resource.id}" type="hidden""/>
<p>
<a onmouseover="javascript:setProfix('star_');showStars(1,'rating');" onmouseout="javascript:setProfix('star_');clearStars('rating');" href="javascript:setProfix('star_');setStars(1,'rating');"><img id="star_1" title="差(1)" src="<%=basePath%>style/images/1.gif"></a><a onmouseover="javascript:setProfix('star_');showStars(2,'rating');" onmouseout="javascript:setProfix('star_');clearStars('rating');" href="javascript:setProfix('star_');setStars(2,'rating');"><img id="star_2" title="一般(2)" src="<%=basePath%>style/images/1.gif"></a><a onmouseover="javascript:setProfix('star_');showStars(3,'rating');" onmouseout="javascript:setProfix('star_');clearStars('rating');" href="javascript:setProfix('star_');setStars(3,'rating');"><img id="star_3" title="好(3)" src="<%=basePath%>style/images/1.gif"></a><a onmouseover="javascript:setProfix('star_');showStars(4,'rating');" onmouseout="javascript:setProfix('star_');clearStars('rating');" href="javascript:setProfix('star_');setStars(4,'rating');"><img id="star_4" title="很好(4)" src="<%=basePath%>style/images/1.gif"></a><a onmouseover="javascript:setProfix('star_');showStars(5,'rating');" onmouseout="javascript:setProfix('star_');clearStars('rating');" href="javascript:setProfix('star_');setStars(5,'rating');"><img id="star_5" title="非常好(5)" src="<%=basePath%>style/images/1.gif"></a>
<input align="right" type="submit" value="评价"/>
</p>
</form>

