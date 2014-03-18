<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fieldset>
<legend>管理员汇总查询</legend>
<form action="<%=request.getContextPath()%>/master/query" method="post">
<div class="row">
	<div class="span4">
		<div class="control-group">
					<label class="control-label" for="name">姓名</label>
					<div class="controls">
								<input type="text" placeholder="姓名" name="name">
					</div>
				</div>		
	</div>
	<div class="span4">
		<div class="control-group">
					<label class="control-label" for="teacherid">身份证号码</label>
					<div class="controls">
								<input type="text" placeholder="身份证号码" name="teacherid">
					</div>
				</div>		
	</div>
	<div class="span4">
		<div class="control-group">
					<label class="control-label" for="zzmm">政治面貌</label>
					<div class="controls">
								<input type="text" placeholder="政治面貌" name="zzmm">
					</div>
		</div>		
	</div>
</div>
<div class="row">
	<div class="span4">
		<div class="control-group">
					<label class="control-label" for="subject">学科专业</label>
					<div class="controls">
								<input type="text" placeholder="学科专业" name="subject">
					</div>
		</div>		
	</div>
	<div class="span4">
		<div class="control-group">
					<label class="control-label" for="degree">最高学历</label>
					<div class="controls">
								<input type="text" placeholder="最高学历" name="degree">
					</div>
		</div>		
	</div>
	<div class="span4">
		<div class="control-group">
					<label class="control-label" for="title">职称</label>
					<div class="controls">
								<input type="text" placeholder="职称" name="title">
					</div>
		</div>		
	</div>
</div>
<div class="row">
	<div class="span4">
		<div class="control-group">
					<label class="control-label" for="department">部门名称</label>
					<div class="controls">
								<input type="text" placeholder="部门名称" name="department">
					</div>
		</div>		
	</div>
	<div class="span6 offset1">
		<div class="control-group">
					<label class="control-label" for="department">&nbsp;</label>
					<div class="controls">
						<button type="submit" class="btn">查询</button>
						<button type="reset" class="btn">清空</button>
					</div>
		</div>		
	</div>
</div>
</form>
</fieldset>
<table class="table table-hover"> 
	<tr>
		<th>身份证号码</th>
		<th>部门名称</th>
		<th>教师名称</th>
		<th>建档日期</th>
	</tr>
	<tbody>
		<c:if test="${data!=null}">
			<c:forEach items="${data}" var="d">
			<tr>
				<td><a target="_blank" href="<%=request.getContextPath()%>/master/queryPreview/${d.teacherId}">${d.teacherId}</a></td>
		     				<td>${d.departmentName}</td>
		     				<td>${d.teacherName}</td>
		     				<td>${d.createProfileTime}</td>
			</tr>
		</c:forEach>
		</c:if>
	</tbody>
</table>
