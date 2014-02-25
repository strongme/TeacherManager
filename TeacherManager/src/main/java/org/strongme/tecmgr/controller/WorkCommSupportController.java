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
import org.strongme.tecmgr.bean.WorkCommSupportBean;
import org.strongme.tecmgr.service.WorkCommSupportService;

@Controller
@RequestMapping("workCommSupport")
public class WorkCommSupportController {
	
	@Resource
	private WorkCommSupportService workCommSupportService;
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(
			@ModelAttribute("from") WorkCommSupportBean form
			,BindingResult results
			) {
		String message = "保存失败";
		int r = -1;
		if(form!=null&&form.getId()!=null) {
			r = workCommSupportService.update(form);
		}else {
			r = workCommSupportService.save(form);
		}
		if(r>0)message = "保存成功";
		return "redirect:/workCommSupport/get/"+form.getTeacherid();
	}
	@RequestMapping(value="/get/{teacherId}",method=RequestMethod.GET)
	public String get(@PathVariable String teacherId,HttpServletRequest request) {
		List<WorkCommSupportBean> result = workCommSupportService.get(teacherId);
		request.setAttribute("data", result);
		return "selfachieve/workCommSupport";
	}
	@RequestMapping(value="/delete/{teacherId}/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id,@PathVariable String teacherId,HttpServletRequest request) {
		int result = workCommSupportService.delete(id);
		String message = "删除失败";
		if(result>0) {
			message = "删除成功";
		}
		return "redirect:/workCommSupport/get/"+teacherId;
	}
}
