<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fieldset>
    <legend>参加教育技术能力培训情况</legend>
   <div class="container">
   	 <form class="form-inline" action="<%=request.getContextPath()%>/workTeachSkill/save" method="POST">
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
					<label class="control-label" for="class_">级别</label>
					<div class="controls">
						<input type="text" name="class_" placeholder="请填国家、省、市、校或者其他级别" id="class_">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="form">培训形式</label>
					<div class="controls">
						<input type="text" name="form" placeholder="培训形式，如讲座、论坛等" id="form">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="score">学习成绩</label>
					<div class="controls">
						<input type="text" name="score" placeholder="分数或者优良中差或者其他描述等" id="score">
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
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="remark">备注</label>
					<div class="controls">
						<input type="text" name="remark" placeholder="如果没有请填写“无”" id="remark">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
					<div class="span6 offset5">
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
    		<th>级别</th>
    		<th>培训形式</th>
    		<th>学习成绩</th>
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
		   	<td class="class_">${exp.class_}</td>
		   	<td class="form">${exp.form}</td>
		   	<td class="score">${exp.score}</td>
		   	<td class="proff">${exp.proff}</td>
		   	<td class="remark">${exp.remark}</td>
		   	<td><a class="btn" onclick="modify(${exp.id})">修改</a></td>
		   	<td><a class="btn" href="<%=request.getContextPath()%>/workTeachSkill/delete/${exp.teacherid}/${exp.id}">删除</a></td>
		   </tr> 
    </c:forEach>
    </tbody>
	</table>
  </fieldset>
 <script src="<%=request.getContextPath()%>/resources/scripts/initDatePicker.js"></script>   
