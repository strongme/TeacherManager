<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <form class="form-horizontal" action="<%=request.getContextPath()%>/sectionSummary/savetiny" method="post">   
<fieldset>
    <legend>阶段成长计划-过程小结第${num}年</legend>
	<input type="hidden" name="id" value="${form.id}">
	<input type="hidden" name="teacherid" value="${teacher.teacherId}">
	<input type="hidden" name="num" value="${num}">
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="rethink">教学情况及反思</label>
					<div class="controls">
						<textarea  name="rethink" id="rethink" placeholder="教学情况及反思">${form.rethink}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="practice">课改实践</label>
					<div class="controls">
						<textarea  name="practice" id="practice" placeholder="课改实践" >${form.practice}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="learnEachOther" >听、评课情况</label>
					<div class="controls">
						<textarea  name="learnEachOther" id="learnEachOther" placeholder="听、评课情况" >${form.learnEachOther}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="schoolBasedEdu">开设校本科情况</label>
					<div class="controls">
						<textarea  name="schoolBasedEdu" id="schoolBasedEdu" placeholder="开设校本科情况" >${form.schoolBasedEdu}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="reading">读书情况</label>
					<div class="controls">
						<textarea  name="reading" id="reading" placeholder="读书情况" >${form.reading}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="classExperience">班主任经历</label>
					<div class="controls">
						<textarea  name="classExperience" id="classExperience" placeholder="班主任经历" >${form.classExperience}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="visitHome">家访</label>
					<div class="controls">
						<textarea  name="visitHome" id="visitHome" placeholder="家访" >${form.visitHome}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="devote">突出贡献</label>
					<div class="controls">
						<textarea  name="devote" id="devote" placeholder="突出贡献" >${form.devote}</textarea>
					</div>
				</div>
	   	</div>
	   </div>
	   <div class="row">
	   	<div class="span12">
	   			<div class="control-group">
					<label class="control-label" for="remark">其他</label>
					<div class="controls">
						<textarea  name="remark" id="remark" placeholder="其他" >${form.remark}</textarea>
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
