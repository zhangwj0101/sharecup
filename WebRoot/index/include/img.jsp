<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<script type="text/javascript">
    function changeValidateCode(obj) {
        var currentTime= new Date().getTime();
        obj.src = "rand.action?d=" + currentTime;
    }
</script>
<img style="margin-top:3px;" src="rand.action" onclick="changeValidateCode(this)" />

