<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航</title>
</head>
<body>
<div class="navbar navbar-inverse" style="position: static;width: 100%;margin: 1px auto;">
              <div class="navbar-inner">
                <div class="container">
                  <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <a class="brand" href="<%=request.getContextPath()%>/to/${teacher.teacherId}"><b>教师成长记录袋</b></a>
                  <div class="nav-collapse collapse navbar-inverse-collapse">
                    <ul class="nav">
                    		<li class="divider-vertical"></li>
                    		<li class="divider-vertical"></li>
                    		<li class="divider-vertical"></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">基本情况 <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="<%=request.getContextPath()%>/basicInfo/form/${teacher.teacherId}">基本信息</a></li>
									<li><a href="<%=request.getContextPath()%>/workExp/get/${teacher.teacherId}">个人简历</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">总体成长规划 <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="<%=request.getContextPath()%>/overAllPlan/get/${teacher.teacherId}">总体成长规划</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">阶段性成长规划 <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="<%=request.getContextPath()%>/sectionSummary/get/${teacher.teacherId}">阶段成长规划</a></li>
									<li><a href="<%=request.getContextPath()%>/sectionSummary/gettiny/${teacher.teacherId}/1">过程小结第一年</a></li>
									<li><a href="<%=request.getContextPath()%>/sectionSummary/gettiny/${teacher.teacherId}/2">过程小结第二年</a></li>
									<li><a href="<%=request.getContextPath()%>/sectionSummary/gettiny/${teacher.teacherId}/3">过程小结第三年</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">个人成就展示 <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="<%=request.getContextPath()%>/workLecture/get/${teacher.teacherId}">开课讲座</a></li>
									<li><a href="<%=request.getContextPath()%>/workSurvey/get/${teacher.teacherId}">调研督导</a></li>
									<li><a href="<%=request.getContextPath()%>/workAward/get/${teacher.teacherId}">教学竞赛</a></li>
									<li><a href="<%=request.getContextPath()%>/workTeachResearch/get/${teacher.teacherId}">教学科研</a></li>
									<li><a href="<%=request.getContextPath()%>/workBookWrite/get/${teacher.teacherId}">论文论著编写</a></li>
									<li><a href="<%=request.getContextPath()%>/workTeaching/get/${teacher.teacherId}">指导学生</a></li>
									<li><a href="<%=request.getContextPath()%>/workLearning/get/${teacher.teacherId}">青年教师</a></li>
									<li><a href="<%=request.getContextPath()%>/workContinueLearn/get/${teacher.teacherId}">继续教育</a></li>
									<li><a href="<%=request.getContextPath()%>/workTeachSkill/get/${teacher.teacherId}">教育技术培训</a></li>
									<li><a href="<%=request.getContextPath()%>/workCommSupport/get/${teacher.teacherId}">交流支教</a></li>
									<li><a href="<%=request.getContextPath()%>/workProMoral/get/${teacher.teacherId}">教师职业道德</a></li>
								</ul></li>
						</ul>
                    <ul class="nav pull-right">
                        <li  style="display: <%=request.getAttribute("toggle")%>"><a id="eye" href="<%=request.getContextPath()%>/to/${teacher.teacherId}">欢迎：<strong>${teacher.teacherName}</strong>&nbsp;老师</a></li>
                    <li><a target="_blank" href="<%=request.getContextPath()%>/master/queryPreview/${teacher.teacherId}" style="display: <%=request.getAttribute("toggle")%>">总体预览</a></li>
                    <li><a href="<%=request.getContextPath()%>/sign/logout" style="display: <%=request.getAttribute("toggle")%>">注销登录</a></li>
                    </ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div><!-- /navbar -->

</body>
</html>