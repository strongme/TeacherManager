<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fieldset>
    <legend>发表论文论著教材编写情况</legend>
   <div class="container">
   	 <form class="form-inline" action="<%=request.getContextPath()%>/workBookWrite/save" method="POST">
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
					<label class="control-label" for="name">文著名称|教材名称</label>
					<div class="controls">
						<input type="text" name="name" placeholder="书籍名称" id="name">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="role">承担部分</label>
					<div class="controls">
						<input type="text" name="role" placeholder="承担部分" id="role">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="publicAndHonour">出版发表获奖|交流情况</label>
					<div class="controls">
						<input type="text" name="publicAndHonour" placeholder="基本情况" id="publicAndHonour">
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
    		<th>文著名称|教材名称</th>
    		<th>承担部分</th>
    		<th>出版发表获奖|交流情况</th>
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
		   	<td class="role">${exp.role}</td>
		   	<td class="publicAndHonour">${exp.publicAndHonour}</td>
		   	<td class="proff">${exp.proff}</td>
		   	<td class="remark">${exp.remark}</td>
		   	<td><a class="btn" onclick="modify(${exp.id})">修改</a></td>
		   	<td><a class="btn" href="<%=request.getContextPath()%>/workBookWrite/delete/${exp.teacherid}/${exp.id}">删除</a></td>
		   </tr> 
    </c:forEach>
    </tbody>
	</table>
  </fieldset>
 <script src="<%=request.getContextPath()%>/resources/scripts/initDatePicker.js"></script>   
