<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <form class="form-horizontal" action="<%=request.getContextPath()%>/sectionSummary/save" method="post">   
<fieldset>
    <legend>阶段成长规划</legend>
	   <div class="row">
	   	<div class="span3">
	   		<div class="control-group">
					<label class="control-label" for="teacherId">身份证号码</label>
					<div class="controls">
						<input type="text" name="teacherId" placeholder="身份证号码"
							value="${teacher.teacherId}" readonly="readonly">
					</div>
				</div>
	   	</div>
	   	<div class="span3">
	   		<div class="control-group">
					<label class="control-label" for="timeZone">时间</label>
					<div class="controls">
								<input  type="text" value="${form.timeZone}" name="timeZone" placeholder="填写往前推算三年的时间段：2010-2013">
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="growPlan">成长规划</label>
					<div class="controls">
						<textarea  name="growPlan" id="growPlan" placeholder="成长规划">${form.growPlan}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="selfCheckRealized">达到的目标</label>
					<div class="controls">
						<textarea  name="selfCheckRealized" id="selfCheckRealized" placeholder="达到的目标" >${form.selfCheckRealized}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="selfCheckUnrealized" >未达到的目标</label>
					<div class="controls">
						<textarea  name="selfCheckUnrealized" id="selfCheckUnrealized" placeholder="未达到的目标" >${form.selfCheckUnrealized}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="goalRevise">目标修订</label>
					<div class="controls">
						<textarea  name="goalRevise" id="goalRevise" placeholder="目标修订" >${form.goalRevise}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="remark">备注</label>
					<div class="controls">
						<textarea  name="remark" id="remark" placeholder="备注" >${form.remark}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span6 offset3">
	   			<div class="control-group">
					<div class="controls">
						<button type="submit" class="btn">保存</button>
						<button type="reset" class="btn">清空</button>
					</div>
				</div>
	   	</div>
	   </div>
  </fieldset>
</form>
<script src="<%=request.getContextPath()%>/resources/scripts/initDatePicker.js"></script>
