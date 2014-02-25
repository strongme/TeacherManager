<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fieldset>
    <legend>指导学生情况</legend>
   <div class="container">
   	 <form class="form-inline" action="<%=request.getContextPath()%>/workTeaching/save" method="POST">
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
					<label class="control-label" for="stunum">学生人数</label>
					<div class="controls">
						<input type="text" name="stunum" placeholder="请填写数字" id="stunum" onchange="isNum(this)">
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="learnGuide">指导情况</label>
					<div class="controls">
						<input type="text" name="learnGuide" placeholder="指导情况" id="learnGuide">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="honour">获奖情况</label>
					<div class="controls">
						<input type="text" name="honour" placeholder="获奖情况" id="honour">
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
    		<th>学生人数</th>
    		<th>指导情况</th>
    		<th>获奖情况</th>
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
		   	<td class="stunum">${exp.stunum}</td>
		   	<td class="learnGuide">${exp.learnGuide}</td>
		   	<td class="honour">${exp.honour}</td>
		   	<td class="proff">${exp.proff}</td>
		   	<td class="remark">${exp.remark}</td>
		   	<td><a class="btn" onclick="modify(${exp.id})">修改</a></td>
		   	<td><a class="btn" href="<%=request.getContextPath()%>/workTeaching/delete/${exp.teacherid}/${exp.id}">删除</a></td>
		   </tr> 
    </c:forEach>
    </tbody>
	</table>
  </fieldset>
 <script src="<%=request.getContextPath()%>/resources/scripts/initDatePicker.js"></script>   
<script>
	function isNum(obj) {
		if(isNaN(obj.value)) {
			alert('学生人数必须为数字');
			obj.value = '';
			$(obj).focus();
		}
		var num = parseInt(obj.value);
		if(num<0) {
			alert('学生人数必须为大于等于0的数字');
			obj.value = '';
			$(obj).focus();
		}
	}
</script>