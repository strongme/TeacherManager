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
import org.strongme.tecmgr.bean.WorkProMoralBean;
import org.strongme.tecmgr.service.WorkProMoralService;

@Controller
@RequestMapping("workProMoral")
public class WorkProMoralController {
	
	@Resource
	private WorkProMoralService workProMoralService;
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") WorkProMoralBean form
			,BindingResult results
			) {
		String message = "保存失败";
		int r = -1;
		if(form!=null&&form.getId()!=null) {
			r = workProMoralService.update(form);
		}else {
			r = workProMoralService.save(form);
		}
		if(r>0)message = "保存成功";
		return "redirect:/workProMoral/get/"+form.getTeacherid();
	}
	
	@RequestMapping(value="/get/{teacherId}",method=RequestMethod.GET)
	public String get(@PathVariable String teacherId,HttpServletRequest request) {
		List<WorkProMoralBean> result = workProMoralService.get(teacherId);
		request.setAttribute("data", result);
		return "selfachieve/workProMoral";
	}
	@RequestMapping(value="/delete/{teacherId}/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id,@PathVariable String teacherId,HttpServletRequest request) {
		int result = workProMoralService.delete(id);
		String message = "删除失败";
		if(result>0) {
			message = "删除成功";
		}
		return "redirect:/workProMoral/get/"+teacherId;
	}
}
