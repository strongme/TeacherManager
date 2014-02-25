<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fieldset>
    <legend>教师职业道德行为情况</legend>
   <div class="container">
   	 <form class="form-inline" action="<%=request.getContextPath()%>/workProMoral/save" method="POST">
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
					<label class="control-label" for="famEdu">有偿家教</label>
					<div class="controls">
						<select name="famEdu" id="famEdu">
							<option selected="selected" value="0">否</option>
							<option  value="1">是</option>
						</select>
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="phyPunishiment">体罚学生</label>
					<div class="controls">
							<select name="phyPunishiment" id="phyPunishiment">
							<option selected="selected" value="0">否</option>
							<option  value="1">是</option>
						</select>
						</div>
					</div>
				</div>
			</div>
		<div class="row">
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="financialRelation">接受财务</label>
					<div class="controls">
						<select name="financialRelation" id="financialRelation">
							<option selected="selected" value="0">否</option>
							<option  value="1">是</option>
						</select>
					</div>
				</div>
			</div>
			<div class="span4">
				<div class="control-group">
					<label class="control-label" for="reference">违规订资料</label>
					<div class="controls">
						<select name="reference" id="reference">
							<option selected="selected" value="0">否</option>
							<option  value="1">是</option>
						</select>
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
    		<th>有偿家教</th>
    		<th>体罚学生</th>
    		<th>接受财务</th>
    		<th>违规订资料</th>
    		<th>备注</th>
			<th>修改</th>
    		<th>删除</th>
    	</tr>
    </thead>
    <tbody>
    <c:forEach items="${data}" var="exp">
		   <tr class="${exp.id}">
		   	<td class="time">${exp.time}</td>
		   	<td class="famEdu">
		   		<c:if test="${exp.famEdu=='1'}">是</c:if>
		   		<c:if test="${exp.famEdu=='0'}">否</c:if>
		   	</td>
		   	<td class="phyPunishiment">
		   		<c:if test="${exp.phyPunishiment=='1'}">是</c:if>
		   		<c:if test="${exp.phyPunishiment=='0'}">否</c:if>
		   	</td>
		   	<td class="financialRelation">
		   	<c:if test="${exp.financialRelation=='1'}">是</c:if>
	   		<c:if test="${exp.financialRelation=='0'}">否</c:if>
		   	</td>
		   	<td class="reference">
		   		<c:if test="${exp.reference=='1'}">是</c:if>
	   			<c:if test="${exp.reference=='0'}">否</c:if>
		   	</td>
		   	<td class="remark">${exp.remark}</td>
		   	<td><a class="btn" onclick="modifySwitch(${exp.id})">修改</a></td>
		   	<td><a class="btn" href="<%=request.getContextPath()%>/workProMoral/delete/${exp.teacherid}/${exp.id}">删除</a></td>
		   </tr> 
    </c:forEach>
    </tbody>
	</table>
  </fieldset>
 <script src="<%=request.getContextPath()%>/resources/scripts/initDatePicker.js"></script>   
 <script>
 
 function modifySwitch(id) {
	 if(!id)return;
	 $('#id').val(id);
	 var data = $('.'+id+' td');
	 for(var i=0;i<data.length;i+=1) {
		if(data[i].className) {
			if(data[i].className==='time'||data[i].className==='remark') {
				$('#'+data[i].className).val($(data[i]).text());
				continue;
			}
			var t =$.trim( $(data[i]).text());
			console.log($('select [name="'+data[i].className+'""] option[value="1"]'));
			if(t=='是') {
				$('#'+data[i].className+' option[value=1]').attr('selected',true);
			}else {
				$('#'+data[i].className+' option[value=0]').attr('selected',true);
			}
		}				 
	 }
	 $('html, body').animate({ scrollTop: 0 }, 'fast');
 }
 
 </script>
