<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %> 
<fieldset>
    <legend>阶段成长规划</legend>
	   <div class="row">
	   	<div class="span3">
	   		<div class="control-group">
					<label class="control-label" for="teacherId">身份证号码</label>
					<div class="controls">
						<h5>${periodGrowPlan.teacherId}</h5>
					</div>
				</div>
	   	</div>
	   	<div class="span3">
	   		<div class="control-group">
					<label class="control-label" for="timeZone">时间</label>
					<div class="controls">
						<h5>${periodGrowPlan.timeZone}</h5>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="growPlan">成长规划</label>
					<div class="controls">
						<p>${periodGrowPlan.growPlan}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="selfCheckRealized">达到的目标</label>
					<div class="controls">
						<p>${periodGrowPlan.selfCheckRealized}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="selfCheckUnrealized" >未达到的目标</label>
					<div class="controls">
						<p>${periodGrowPlan.selfCheckUnrealized}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="goalRevise">目标修订</label>
					<div class="controls">
						<p>${periodGrowPlan.goalRevise}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="remark">备注</label>
					<div class="controls">
						<p>${periodGrowPlan.remark}</p>
					</div>
				</div>
	   	</div>
	   </div>
  </fieldset>