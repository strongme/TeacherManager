package org.strongme.tecmgr.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.strongme.tecmgr.bean.WorkExperienceBean;
import org.strongme.tecmgr.service.WorkExperienceService;

@Controller
@RequestMapping("workExp")
public class WorkExperienceController {

	@Resource
	private WorkExperienceService workExperienceService;
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") WorkExperienceBean form
			,BindingResult results
			) {
		String message = "保存失败";
		int r = -1;
		if(form!=null&&form.getId()!=null) {
			r = workExperienceService.update(form);
		}else {
			r = workExperienceService.save(form);
		}
		if(r>0)message="保存成功";
		return "redirect:/workExp/get/"+form.getTeacherid();
	}
	
	@RequestMapping(value="/get/{teacherId}",method=RequestMethod.GET)
	public String get(@PathVariable String teacherId,HttpServletRequest request) {
		List<WorkExperienceBean> result = workExperienceService.get(teacherId);
		request.setAttribute("data", result);
		return "basicInfo/workExp";
	}
	
	@RequestMapping(value="/delete/{teacherId}/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id,@PathVariable String teacherId,HttpServletRequest request) {
		int result = workExperienceService.delete(id);
		String message = "删除失败";
		if(result>0) {
			message = "删除成功";
		}
		return "redirect:/workExp/get/"+teacherId;
	}
}
