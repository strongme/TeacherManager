<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><t:insertAttribute name="title" ignore="true"/></title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/prettify.css">
<style type="text/css">
*{
	font-family: '微软雅黑';
}
textarea {
	width: 800px;
	height: 200px;
}
</style>
<script type="text/javascript">var basepath="<%=request.getContextPath()%>";</script>
<script src="<%=request.getContextPath() %>/resources/scripts/ysw.js"></script>
<script src="<%=request.getContextPath() %>/resources/scripts/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/scripts/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/scripts/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/scripts/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/scripts/kindeditor.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/scripts/prettify.js"></script>
</head>
<body>
<div>
<t:insertAttribute name="head"></t:insertAttribute>
</div>
<div class="container" style="margin-top: 30px;">
<t:insertAttribute name="body"></t:insertAttribute>
</div>
<script type="text/javascript">
window.prettyPrint&&prettyPrint();
</script>
</body>
</html>