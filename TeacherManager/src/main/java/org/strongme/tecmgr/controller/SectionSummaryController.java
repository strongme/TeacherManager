package org.strongme.tecmgr.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.strongme.tecmgr.bean.SectionLittleSummaryBean;
import org.strongme.tecmgr.bean.SectionSummaryBean;
import org.strongme.tecmgr.service.SectionLittleSummaryService;
import org.strongme.tecmgr.service.SectionSummaryService;

@Controller
@RequestMapping("sectionSummary")
public class SectionSummaryController {
	
	@Resource
	private SectionSummaryService sectionSummaryService;
	@Resource
	private SectionLittleSummaryService sectionLittleSummaryService;
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") SectionSummaryBean form
			,BindingResult results
			) {
		String message = "保存失败";
		if(!sectionSummaryService.isExist(form.getTeacherId())) {
			int r = sectionSummaryService.save(form);
			if(r>0)message = "保存成功";
		}else {
			int r = sectionSummaryService.update(form);
			if(r>0)message = "保存成功";
		}
		return "redirect:/sectionSummary/get/"+form.getTeacherId();
	}
	
	@RequestMapping(value="/savetiny",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") SectionLittleSummaryBean form
			,BindingResult results
			) {
		String message = "保存失败";
		if(!sectionLittleSummaryService.isExist(form.getTeacherid(),form.getNum())) {
			int r = sectionLittleSummaryService.save(form);
			if(r>0)message = "保存成功";
		}else {
			int r = sectionLittleSummaryService.update(form);
			if(r>0)message = "保存成功";
		}
		return "redirect:/sectionSummary/gettiny/"+form.getTeacherid()+"/"+form.getNum();
	}
	
	@RequestMapping(value="/get/{teacherId}",method=RequestMethod.GET)
	public String get(@PathVariable String teacherId,HttpServletRequest request) {
		SectionSummaryBean result = sectionSummaryService.get(teacherId);
		request.setAttribute("form", result);
		return "periodplan/periodPlan";
	}

	@RequestMapping(value="/gettiny/{teacherId}/{num}",method=RequestMethod.GET)
	public String getlittle(@PathVariable String teacherId,@PathVariable int num,HttpServletRequest request) {
		SectionLittleSummaryBean result = sectionLittleSummaryService.get(teacherId,num);
		request.setAttribute("form", result);
		request.setAttribute("num", num);
		return "periodplan/periodPlanTiny";
	}
}
