package org.strongme.tecmgr.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.strongme.tecmgr.bean.OverAllPlanBean;
import org.strongme.tecmgr.service.OverAllPlanService;

@Controller
@RequestMapping("overAllPlan")
public class OverAllPlanController {
	
	@Resource
	private OverAllPlanService overAllPlanService;
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") OverAllPlanBean form
			,BindingResult results
			) {
		String message = "保存失败";
		if(!overAllPlanService.isExist(form.getTeacherId())) {
			int r = overAllPlanService.save(form);
			if(r>0)message = "保存成功";
		}else {
			int r = overAllPlanService.update(form);
			if(r>0)message = "保存成功";
		}
		return "redirect:/overAllPlan/get/"+form.getTeacherId();
	}
	
	@RequestMapping(value="/get/{teacherId}",method=RequestMethod.GET)
	public String get(@PathVariable String teacherId,HttpServletRequest request) {
		OverAllPlanBean result = overAllPlanService.get(teacherId);
		request.setAttribute("form", result);
		return "wholePlan/wholePlan";
	}

}
