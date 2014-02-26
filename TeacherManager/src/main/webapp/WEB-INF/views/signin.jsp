<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap-responsive.css">
 <style type="text/css">
   body{
  	<!--background-image: url("<%=request.getContextPath()%>/resources/images/navy_blue.png");-->
  }
 </style>
</head>
<body>
<%-- <div style="text-align: center;">
<h6><font>如有问题请先查看<a target="_blank" href="<%=request.getContextPath()%>/sign/help" style="color:red;text-decoration: underline;">使用说明</a></font></h6>
</div> --%>
	<div style="position: absolute;top: 35%;left: 15%;">
		 	<h1><font face="楷体" size="200">太原成成中学</font></h1>
			<h3 style="text-align: center;"><font face="楷体">教师成长记录系统</font></h3>	
	</div>

	<div style="width:100%;height:100%;margin: 9% auto;" class="hero-unit">
		<form action="<%=request.getContextPath() %>/signin" method="post" name="signin" class="form-horizontal">
	        <font style="color: red;"><%=request.getAttribute("tips")==null?"": request.getAttribute("tips")%></font>
	      
			<div class="control-group" style="margin-left: 45%;">
				<label class="control-label">身份证号码</label>
				<div class="controls">
					<input type="text" placeholder="请输入身份证号码" name="teacherid" id="teacherid" onchange="isExist(this.value)" value="<%= request.getParameter("teacherid")==null?"":request.getParameter("teacherid")%>">
				</div>
			</div>
			
			<div class="control-group" style="margin-left: 45%;">
				<label class="control-label">密码</label>
				<div class="controls">
				 	<input type="password" placeholder="请输入密码" name="password" id="p1" onkeydown="javascript: if(event.keyCode==13) sign();">
				</div>
			</div>
		  
			<div class="control-group" style="margin-left: 45%;">
				<div class="controls">
					<button  class="btn" onclick="sign()" type="button">登录</button>
					<button  class="btn" onclick="reset()" type="button">清空</button>
					<button class="btn" onclick="tosignup()" type="button">注册</button>
				</div>
			</div>
		  
	</form>
</div>
<!-- <div style="text-align: center;">
<h6><font>如果还有问题无法解决请及时联系信息中心 ！申建强老师   TEL：15536660688 袁子茜  QQ：2022593664 TEL：15619388806</font></h6>
 </div> -->
 <script src="<%=request.getContextPath() %>/resources/scripts/jquery-1.8.3.js"></script>
  <script type="text/javascript">var basepath="<%=request.getContextPath()%>";</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/scripts/bootstrap.js"></script>
  <script src="<%=request.getContextPath() %>/resources/pagejs/signin.js"></script>
</body>
</html>