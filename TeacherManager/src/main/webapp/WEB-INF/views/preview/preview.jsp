<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>预览</title>
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
<div class="container">
<jsp:include page="basicInfo.jsp"></jsp:include>
<jsp:include page="workexp.jsp"></jsp:include>
<jsp:include page="wholeGrowPlan.jsp"></jsp:include>
<jsp:include page="periodGrowPlan.jsp"></jsp:include>
<jsp:include page="periodGrowPlanY.jsp"></jsp:include>
<jsp:include page="workLecture.jsp"></jsp:include>
<jsp:include page="workSurvey.jsp"></jsp:include>
<jsp:include page="workAward.jsp"></jsp:include>
<jsp:include page="workTeachResearch.jsp"></jsp:include>
<jsp:include page="workBookWrite.jsp"></jsp:include>
<jsp:include page="workTeaching.jsp"></jsp:include>
<jsp:include page="workLearning.jsp"></jsp:include>
<jsp:include page="workContinueLearn.jsp"></jsp:include>
<jsp:include page="workTeachSkill.jsp"></jsp:include>
<jsp:include page="workCommSupport.jsp"></jsp:include>
<jsp:include page="workProMoral.jsp"></jsp:include>
</div>
<script type="text/javascript">
window.prettyPrint&&prettyPrint();
$('.control-label').addClass('label label-success');
$('table').addClass('table');
</script>
</body>