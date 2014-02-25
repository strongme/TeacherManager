package org.strongme.tm;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return ".signin";
	}
	
	@RequestMapping(value = "/sign/{page}", method = RequestMethod.GET)
	public String sign(@PathVariable String page) {
		return "."+page;
	}
	
}
