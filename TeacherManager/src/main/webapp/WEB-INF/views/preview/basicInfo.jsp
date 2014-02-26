<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core" %> 
<fieldset>
<legend>基本信息</legend>
<div class="row">
			<div class="span6">
				<div class="control-group">
					<label class="control-label" for="teacherName">教师姓名</label>
					<div class="controls">
						<h4>${teacherBasicInfo.teacherName}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="teacherId">身份证号码</label>
					<div class="controls">
						<h4>${teacherBasicInfo.teacherId }</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="gender">性别</label>
					<div class="controls">
						<j:if test="${teacherBasicInfo.gender=='1'}"><h4>男</h4></j:if>
						<j:if test="${teacherBasicInfo.gender=='0'}"><h4>女</h4></j:if>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="native_">籍贯</label>
					<div class="controls">
						<h4>${teacherBasicInfo.native_}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="birth">出生年月</label>
					<div class="controls">
								<h4>${teacherBasicInfo.birth}</h4>
					</div>	
				</div>
				<div class="control-group">
					<label class="control-label" for="nation">民族</label>
					<div class="controls">
						<h4>${teacherBasicInfo.nation}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="politicsStatus">政治面貌</label>
					<div class="controls">
						<h4>${teacherBasicInfo.politicsStatus}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="subject">学科专业</label>
					<div class="controls">
						<h4>${teacherBasicInfo.subject}</h4>
					</div>
				</div>
			</div>
			<div class="span6">
				<div class="control-group">
					<label class="control-label" for="position">职务</label>
					<div class="controls">
						<h4>${teacherBasicInfo.position}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="photo">照片</label>
					<div class="controls">
						<h4>照片暂无</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="phone">联系电话</label>
					<div class="controls">
						<h4>${teacherBasicInfo.phone}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="email">邮箱</label>
					<div class="controls">
						<h4>${teacherBasicInfo.email}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="qq">QQ号</label>
					<div class="controls">
						<h4>${teacherBasicInfo.qq}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="departmentName">所在单位</label>
					<div class="controls">
						<h4>${teacherBasicInfo.departmentName}</h4>
					</div>
				</div>
					<div class="control-group">
					<label class="control-label" for="highestDegree">最高学历</label>
					<div class="controls">
						<h4>${teacherBasicInfo.highestDegree}</h4>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="professionalTitle">职称</label>
					<div class="controls">
						<h4>${teacherBasicInfo.professionalTitle}</h4>
					</div>
				</div>
			</div>
		</div>
			<div class="row">
				<div class="span10">
					<div class="control-group">
					<label class="control-label" for="departmentName">特长/才艺</label>
					<div class="controls">
						<p>${teacherBasicInfo.talent}</p>
					</div>
				</div>
				</div>
			</div>
			<div class="row">
				<div class="span10">
					<div class="control-group">
					<label class="control-label" for="remark2">其他情况</label>
					<div class="controls">
						<p>${teacherBasicInfo.remark2}</p>
					</div>
				</div>
				</div>
			</div>
			<div class="row">
				<div class="span10">
					<div class="control-group">
					<label class="control-label" for="honourDetail">表彰奖励或荣誉称号情况</label>
					<div class="controls">
						<p>${teacherBasicInfo.honourDetail}</p>
					</div>
				</div>
				</div>
			</div>
</fieldset>