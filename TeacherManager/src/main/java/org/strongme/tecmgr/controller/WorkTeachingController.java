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
import org.strongme.tecmgr.bean.WorkTeachingBean;
import org.strongme.tecmgr.service.WorkTeachingService;

@Controller
@RequestMapping("workTeaching")
public class WorkTeachingController {
	
	@Resource
	private WorkTeachingService workTeachingService;
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") WorkTeachingBean form
			,BindingResult results
			) {
		String message = "保存失败";
		int r = -1;
		if(form!=null&&form.getId()!=null) {
			r = workTeachingService.update(form);
		}else {
			r = workTeachingService.save(form);
		}
		if(r>0)message = "保存成功";
		return "redirect:/workTeaching/get/"+form.getTeacherid();
	}
	
	@RequestMapping(value="/get/{teacherId}",method=RequestMethod.GET)
	public String get(@PathVariable String teacherId,HttpServletRequest request) {
		List<WorkTeachingBean> result = workTeachingService.get(teacherId);
		request.setAttribute("data", result);
		return "selfachieve/workTeaching";
	}
	@RequestMapping(value="/delete/{teacherId}/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id,@PathVariable String teacherId,HttpServletRequest request) {
		int result = workTeachingService.delete(id);
		String message = "删除失败";
		if(result>0) {
			message = "删除成功";
		}
		return "redirect:/workTeaching/get/"+teacherId;
	}
}
