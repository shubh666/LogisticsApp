package com.project.cntr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.dao.UserDao;
import com.project.model.User;
import com.project.model.Vehicle;
import com.project.serv.UserServ;
import com.project.serv.UserServImple;
import com.project.serv.VehicleServ;

@Controller
public class HomeController {
	
	@Autowired
	private UserServ userServ;

	
	@GetMapping("/index")
	public ModelAndView signinPage() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	
	@GetMapping("/home")
	public ModelAndView signinPage1() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");	
		return mv;
	}
	
	
	@PostMapping("/home")
	public ModelAndView vuser(User user) 
	{
		System.out.println();
		ModelAndView mv = new ModelAndView();
		try {
			boolean auth = this.userServ.login(user);
			System.out.println(auth);
			if(auth) {
				mv.setViewName("home");
			} else {
				mv.addObject("Enter Valid Credentials");
				mv.setViewName("index");
			}
			
			return mv;
		} catch(Exception e) {
			mv.setViewName("index");
		}	
		return  mv;
	}
	
	
	@GetMapping("/register")
	public ModelAndView signUpPage() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");	
		return mv;
	}
	
	
	@PostMapping("/register")
	public ModelAndView register(User user) 
	{
		System.out.println();
		this.userServ.create(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	
	@GetMapping("/forgetPassword")
	public ModelAndView forgetPasswordPage() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forgetPassword");	
		return mv;
	}
	
	
	@PostMapping("/forgetPassword")
	public ModelAndView forgetPasswordPage(User user) 
	{	
		boolean validUser = this.userServ.resetPassword(user);	
		ModelAndView mv = new ModelAndView();
		if(validUser)
		{	
			mv.setViewName("index");
		}
		else
		{
			mv.setViewName("forgetPassword");
		}
		return mv;
	}
}
