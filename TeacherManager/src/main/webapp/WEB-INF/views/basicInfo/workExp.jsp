<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fieldset>
    <legend>教师个人简历</legend>
   <div class="container">
   	 <form class="form-inline" action="<%=request.getContextPath()%>/workExp/save" method="POST">
   	 	<input type="hidden" name="id" value="" id="id">
   	 	<input type="hidden" name="teacherid" value="${teacher.teacherId}">
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="teacherName">起始年月</label>
					<div class="controls">
							<div class="input-append date datetimepicker" data-date="" data-date-format="yyyy-mm-dd">
								<input class="span2" size="16" type="text" value="" name="startTime" id="startTime">
								<span class="add-on"><i class="icon-th"></i></span>
							</div>
						</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="teacherName">终止年月</label>
					<div class="controls">
						<div class="input-append date datetimepicker" data-date="" data-date-format="yyyy-mm-dd">
								<input class="span2" size="16" type="text" value="" name="endTime" id="endTime">
								<span class="add-on"><i class="icon-th"></i></span>
							</div>
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="teacherName">单位|部门</label>
					<div class="controls">
						<input type="text" name="uintOrDepartment" placeholder="单位|部门" id="uintOrDepartment">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="teacherName">职务|职称</label>
					<div class="controls">
						<input type="text" name="postOrProtitle" placeholder="职务|职称" id="postOrProtitle">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="teacherName">备注</label>
					<div class="controls">
						<input type="text" name="remark3" placeholder="备注" id="remark3">
					</div>
				</div>
			</div>
				<div class="span4">
				<div class="control-group">
					<label class="control-label">&nbsp;</label>
					<div class="controls">
						<button type="submit" class="btn">保存</button>
						<button type="reset" class="btn">清空</button>
					</div>
				</div>
			</div>
		</div>
	</form>
   </div>
    <table class="table table-hover">
    <thead>
    	<tr>
    		<th>起始年月</th>
    		<th>终止年月</th>
    		<th>单位|部门</th>
    		<th>职务|职称</th>
    		<th>备注</th>
    		<th>修改</th>
    		<th>删除</th>
    	</tr>
    </thead>
    <tbody>
    <c:forEach items="${data}" var="exp">
		   <tr class="${exp.id}">
		   	<td class="startTime">${exp.startTime}</td>
		   	<td class="endTime">${exp.endTime}</td>
		   	<td class="uintOrDepartment">${exp.uintOrDepartment}</td>
		   	<td class="postOrProtitle">${exp.postOrProtitle}</td>
		   	<td class="remark3">${exp.remark3}</td>
		   	<td><a class="btn" onclick="modify(${exp.id})">修改</a></td>
		   	<td><a class="btn" href="<%=request.getContextPath()%>/workExp/delete/${exp.teacherid}/${exp.id}">删除</a></td>
		   </tr> 
    </c:forEach>
    </tbody>
	</table>
	 
  </fieldset>
 <script src="<%=request.getContextPath()%>/resources/scripts/initDatePicker.js"></script>   
