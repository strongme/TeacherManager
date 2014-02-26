<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %> 
<fieldset>
    <legend>总体成长规划</legend>
	   <div class="row">
	   	<div class="span3">
	   		<div class="control-group">
					<label class="control-label" for="teacherId">身份证号码</label>
					<div class="controls">
						<h5>${wholeGrowPlan.teacherId}</h5>
					</div>
				</div>
	   	</div>
	   	<div class="span3">
	   		<div class="control-group">
					<label class="control-label" for="planTime">时间</label>
					<div class="controls">
						<h5>${wholeGrowPlan.planTime}</h5>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="eduIdea">我的教学理念</label>
					<div class="controls">
						<p>${wholeGrowPlan.eduIdea}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="advanced">优势分析</label>
					<div class="controls">
						<p>${wholeGrowPlan.advanced}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="disadvanced" >不足分析</label>
					<div class="controls">
						<p>${wholeGrowPlan.disadvanced}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="planDetail">我的成长规划</label>
					<div class="controls">
						<p>${wholeGrowPlan.planDetail}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="remark">备注</label>
					<div class="controls">
						<p>${wholeGrowPlan.remark}</p>
					</div>
				</div>
	   	</div>
	   </div>
	   </fieldset>