<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="hero-unit">
<h1>${teacher.teacherName}老师，您好！</h1>
<br>
<p>
<span class="label label-success">${teacher.teacherId}</span>
<span class="label label-success">${teacher.departmentName}</span>
<span class="label label-success">${teacher.createProfileTime}</span>
</p>
<p><a href="<%=request.getContextPath() %>/basicInfo/form/${teacher.teacherId}" class="btn btn-primary btn-large">详细基本信息 &raquo;</a></p>
</div>
