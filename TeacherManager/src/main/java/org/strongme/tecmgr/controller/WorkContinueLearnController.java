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
import org.strongme.tecmgr.bean.WorkContinueLearnBean;
import org.strongme.tecmgr.service.WorkContinueLearnService;

@Controller
@RequestMapping("workContinueLearn")
public class WorkContinueLearnController {
	
	@Resource
	private WorkContinueLearnService workContinueLearnService;
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") WorkContinueLearnBean form
			,BindingResult results
			) {
		String message = "保存失败";
		int r = -1;
		if(form!=null&&form.getId()!=null) {
			r = workContinueLearnService.update(form);
		}else {
			r = workContinueLearnService.save(form);
		}
		if(r>0)message = "保存成功";
		return "redirect:/workContinueLearn/get/"+form.getTeacherid();
	}
	
	@RequestMapping(value="/get/{teacherId}",method=RequestMethod.GET)
	public String get(@PathVariable String teacherId,HttpServletRequest request) {
		List<WorkContinueLearnBean> result = workContinueLearnService.get(teacherId);
		request.setAttribute("data", result);
		return "selfachieve/workContinueLearn";
	}
	@RequestMapping(value="/delete/{teacherId}/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id,@PathVariable String teacherId,HttpServletRequest request) {
		int result = workContinueLearnService.delete(id);
		String message = "删除失败";
		if(result>0) {
			message = "删除成功";
		}
		return "redirect:/workContinueLearn/get/"+teacherId;
	}
}
