<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fieldset>
    <legend>参加教育教学课题研究情况</legend>
   <div class="container">
   	 <form class="form-inline" action="<%=request.getContextPath()%>/workSurvey/save" method="POST">
   	 	<input type="hidden" name="id" value="" id="id">
   	 	<input type="hidden" name="teacherid" value="${teacher.teacherId}">
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="time">时间</label>
					<div class="controls">
							<div class="input-append date datetimepicker" data-date="" data-date-format="yyyy-mm-dd">
								<input class="span2" size="16" type="text" value="" name="time" id="time">
								<span class="add-on"><i class="icon-th"></i></span>
							</div>
						</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="name">课题名称</label>
					<div class="controls">
						<input type="text" name="name" placeholder="课题名称" id="name">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="org">立项部门</label>
					<div class="controls">
						<input type="text" name="org" placeholder="立项部门" id="org">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="role">本人承担责任</label>
					<div class="controls">
						<input type="text" name="role" placeholder="本人承担责任" id="role">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="finishedDetails">结题情况</label>
					<div class="controls">
						<input type="text" name="finishedDetails" placeholder="结题情况" id="finishedDetails">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="proff">证明材料</label>
					<div class="controls">
						<input type="text" name="proff" placeholder="填写材料类别，如证书等" id="proff">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="remark">备注</label>
					<div class="controls">
						<input type="text" name="remark" placeholder="如果没有请填写“无”" id="remark">
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
    			<th>时间</th>
    		<th>课题名称</th>
    		<th>立项部门</th>
    		<th>本人承担责任</th>
    		<th>结题情况</th>
    		<th>证明材料</th>
    		<th>备注</th>
			<th>修改</th>
    		<th>删除</th>
    	</tr>
    </thead>
    <tbody>
    <c:forEach items="${data}" var="exp">
		   <tr class="${exp.id}">
		   	<td class="time">${exp.time}</td>
		   	<td class="name">${exp.name}</td>
		   	<td class="org">${exp.org}</td>
		   	<td class="role">${exp.role}</td>
		   	<td class="finishedDetails">${exp.finishedDetails}</td>
		   	<td class="proff">${exp.proff}</td>
		   	<td class="remark">${exp.remark}</td>
		   	<td><a class="btn" onclick="modify(${exp.id})">修改</a></td>
		   	<td><a class="btn" href="<%=request.getContextPath()%>/workTeachResearch/delete/${exp.teacherid}/${exp.id}">删除</a></td>
		   </tr> 
    </c:forEach>
    </tbody>
	</table>
  </fieldset>
 <script src="<%=request.getContextPath()%>/resources/scripts/initDatePicker.js"></script>   
