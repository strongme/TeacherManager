<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form class="form-horizontal" action="<%=request.getContextPath()%>/basicInfo/save" method="post">
<fieldset>
    <legend>教师基本信息</legend>
    <div class="row">
			<div class="span6">
				<div class="control-group">
					<label class="control-label" for="teacherName">教师姓名</label>
					<div class="controls">
						<input type="text" name="teacherName" placeholder="教师姓名"
							value="${teacher.teacherName }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="teacherId">身份证号码</label>
					<div class="controls">
						<input type="text" name="teacherId" placeholder="身份证号码"
							value="${teacher.teacherId }" readonly="readonly">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="gender">性别</label>
					<div class="controls">
						<input type="hidden" name="gender" value="${form.gender}"
							id="gender"> <select id="forGender"
							onchange="changeGender(this)">
							<option value="-1">请选择性别</option>
							<option value="1">男</option>
							<option value="0">女</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="native_">籍贯</label>
					<div class="controls">
						<input type="text" name="native_" placeholder="籍贯"
							value="${form.native_}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="birth">出生年月</label>
					<div class="controls">
						<div class="input-append date datetimepicker" data-date="" data-date-format="yyyy-mm-dd">
								<input class="span2" size="16" type="text" value="${form.birth}" name="birth">
								<span class="add-on"><i class="icon-th"></i></span>
							</div>	
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="nation">民族</label>
					<div class="controls">
						<input type="text" name="nation" placeholder="民族"
							value="${form.nation}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="politicsStatus">政治面貌</label>
					<div class="controls">
						<input type="text" name="politicsStatus" placeholder="政治面貌"
							value="${form.politicsStatus}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="subject">学科专业</label>
					<div class="controls">
						<input type="text" name="subject" placeholder="学科专业"
							value="${form.subject}">
					</div>
				</div>
			</div>
			<div class="span6">
				<div class="control-group">
					<label class="control-label" for="position">职务</label>
					<div class="controls">
						<input type="text" name="position" placeholder="职务"
							value="${form.position}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="photo">照片</label>
					<div class="controls">
						<input type="text" name="photo" placeholder="照片暂无" value="照片暂无">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="phone">联系电话</label>
					<div class="controls">
						<input type="text" name="phone" placeholder="联系电话"
							value="${form.phone}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="email">邮箱</label>
					<div class="controls">
						<input type="text" name="email" placeholder="邮箱"
							value="${form.email}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="qq">QQ号</label>
					<div class="controls">
						<input type="text" name="qq" placeholder="QQ号" value="${form.qq}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="departmentName">所在单位</label>
					<div class="controls">
						<input type="text" name="departmentName" placeholder="所在单位"
							value="${form.departmentName}">
					</div>
				</div>
					<div class="control-group">
					<label class="control-label" for="highestDegree">最高学历</label>
					<div class="controls">
						<input type="text" name="highestDegree" placeholder="最高学历"
							value="${form.highestDegree}">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="professionalTitle">职称</label>
					<div class="controls">
						<input type="text" name="professionalTitle" placeholder="职称"
							value="${form.professionalTitle}">
					</div>
				</div>
			</div>
		</div>
			<div class="row">
				<div class="span10">
					<div class="control-group">
					<label class="control-label" for="departmentName">特长/才艺</label>
					<div class="controls">
						<textarea name="talent"  id="talent" placeholder="特长/才艺">${form.talent}</textarea>
					</div>
				</div>
				</div>
			</div>
			<div class="row">
				<div class="span10">
					<div class="control-group">
					<label class="control-label" for="remark2">其他情况</label>
					<div class="controls">
						<textarea name="remark2" id="remark2" placeholder="其他情况">${form.remark2}</textarea>
					</div>
				</div>
				</div>
			</div>
			<div class="row">
				<div class="span10">
					<div class="control-group">
					<label class="control-label" for="honourDetail">表彰奖励或荣誉称号情况</label>
					<div class="controls">
						<textarea name="honourDetail" id="honourDetail" placeholder="表彰奖励或荣誉称号情况">${form.honourDetail}</textarea>
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
 <script>
 $(function() {
	 var g = '${form.gender}';
	 $('#forGender option[value='+g+']').attr('selected',true);
 });
 
 function changeGender(obj) {
	 $('#gender').val(obj.value);
 }
 </script>   
