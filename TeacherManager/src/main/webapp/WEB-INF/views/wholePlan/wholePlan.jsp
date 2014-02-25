<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <form class="form-horizontal" action="<%=request.getContextPath()%>/overAllPlan/save" method="post">   
<fieldset>
    <legend>总体成长规划</legend>
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
					<label class="control-label" for="planTime">时间</label>
					<div class="controls">
							<div class="input-append date datetimepicker" data-date="" data-date-format="yyyy-mm-dd">
								<input class="span2" size="16" type="text" value="${form.planTime}" name="planTime">
								<span class="add-on"><i class="icon-th"></i></span>
							</div>	
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="eduIdea">我的教学理念</label>
					<div class="controls">
						<textarea  name="eduIdea" id="eduIdea" placeholder="我的教学理念">${form.eduIdea}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="advanced">优势分析</label>
					<div class="controls">
						<textarea  name="advanced" id="advanced" placeholder="优势分析" >${form.advanced}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="disadvanced" >不足分析</label>
					<div class="controls">
						<textarea  name="disadvanced" id="disadvanced" placeholder="不足分析" >${form.disadvanced}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="planDetail">我的成长规划</label>
					<div class="controls">
						<textarea  name="planDetail" id="planDetail" placeholder="我的成长规划" >${form.planDetail}</textarea>
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
