package org.strongme.tecmgr.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.strongme.tecmgr.bean.TeacherBasicInfoBean;
import org.strongme.tecmgr.service.TeacherBasicInfoService;

@Controller
@RequestMapping("basicInfo")
public class TeacherBasicInfoController {

	@Resource
	private TeacherBasicInfoService teacherBasicInfoService;
	
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") TeacherBasicInfoBean form
			,BindingResult results,HttpServletRequest request
			) {
		String message = "保存失败";
		if(!teacherBasicInfoService.isExist(form.getTeacherId())) {
			int r = teacherBasicInfoService.save(form);
			if(r>0) message = "保存成功";
		}else {
			int r = teacherBasicInfoService.update(form);
			if(r>0)message = "保存成功";;
		}
		request.setAttribute("msg", message);
		request.setAttribute("form", form);
		return "basicInfo/basicinfo";
	}
	
	@RequestMapping(value="/get",method=RequestMethod.POST,produces = "application/json")
	public @ResponseBody TeacherBasicInfoBean get(@RequestParam String teacherId) {
		TeacherBasicInfoBean result = teacherBasicInfoService.get(teacherId);
		return result;
	}
	
	@RequestMapping(value="/form/{teacherId}",method=RequestMethod.GET)
	public String form(@PathVariable String teacherId,HttpServletRequest request) {
		TeacherBasicInfoBean result = teacherBasicInfoService.get(teacherId);
		request.setAttribute("form", result);
		return "basicInfo/basicinfo";
	}
	
}
