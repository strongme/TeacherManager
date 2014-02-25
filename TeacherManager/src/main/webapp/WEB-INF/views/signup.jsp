<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册</title>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap-responsive.css">
    <style type="text/css">
   body{
  	<!--background-image: url("<%=request.getContextPath()%>/resources/images/navy_blue.png");-->
  }
 </style>
</head>
<body>
<div style="text-align: center;">
<h6><font>如有问题请及时联系信息中心 ！申建强老师   TEL：15536660688 袁子茜  QQ：2022593664 TEL：15619388806</font></h6>
</div>
<div style="width:100%;height:100%;margin:5% auto;" class="hero-unit">
		<form action="<%=request.getContextPath() %>/signup" method="post" name="signup" class="form-horizontal">
	        
	        <div class="control-group" style="margin-left: 29%;">
				<label class="control-label">身份证号码</label>
				<div class="controls">
					<input type="text" placeholder="输入后请仔细核对身份证号码" name="teacherid" id="teacherid" onchange="isExist(this.value)">
				</div>
			</div>
			
            <div class="control-group" style="margin-left: 29%;">
				<label class="control-label">密码</label>
				<div class="controls">
				 <input type="password" placeholder="请输入密码" name="password" id="p1">
				</div>
			</div>
			
            <div class="control-group" style="margin-left: 29%;">
				<label class="control-label">确认密码</label>
				<div class="controls">
	            <input type="password" placeholder="请再次输入密码" id="p2">
				</div>
			</div>
	         <div class="control-group" style="margin-left: 29%;">
				<label class="control-label">教职工姓名</label>
				<div class="controls">
					 <input type="text" placeholder="请输入教职工姓名" name="teachername" id="teachername">
				</div>
			</div>
			
	          <div class="control-group" style="margin-left: 29%;">
				<label class="control-label">部门名称</label>
				<div class="controls">
					<select name="departmentname" id="departmentname">
		            </select>
				</div>
			</div>
			
			<div class="control-group" style="margin-left: 24%;">
				<label class="controls"><font color="red" >注册成功无法修改，请正确输入您的身份证号码！</font></label>
			</div>
			
	         <div class="control-group" style="margin-left: 29%;">
				<div class="controls">
	        	<button  class="btn" onclick="sign()" type="button">注册</button>
	        	<button  class="btn" onclick="reset()" type="button">清空</button>
	        	<button  class="btn" onclick="tosignin()" type="button">登录</button>
				</div>
			</div>
	</form>
</div>

   <script src="<%=request.getContextPath() %>/resources/scripts/jquery-1.8.3.js"></script>
  <script type="text/javascript">var basepath="<%=request.getContextPath()%>";</script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/scripts/bootstrap.js"></script>
  <script src="<%=request.getContextPath() %>/resources/pagejs/signup.js"></script>
</body>
</html>