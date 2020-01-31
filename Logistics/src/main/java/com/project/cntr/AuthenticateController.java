package com.project.cntr;


import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticateController implements ErrorController {

	private static final String Path="/error";

	@GetMapping(Path)
	public ModelAndView Error() {
	ModelAndView mvc = new ModelAndView();
	mvc.setViewName("error");
	
	return mvc;
	}
	
	@PostMapping(Path)
	public ModelAndView error1() {
	
	ModelAndView mvc = new ModelAndView();
	mvc.setViewName("error");
	
	return mvc;
	}

	@Override
	public String getErrorPath() {
	
		return Path;
	}
}
