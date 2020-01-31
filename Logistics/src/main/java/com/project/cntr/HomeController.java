package com.project.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	HttpSession session;
	
	@Autowired
	private UserServ userServ;

	private Object msg;

	
	@GetMapping("/")
	public ModelAndView signinPage() 
	{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("uname")!=null)
		{
			mv.setViewName("home");
		}
		else
		{
			mv.setViewName("index");
		}
			return mv;
	}
	
	@PostMapping("/")
	public ModelAndView signinPage2(User user) 
	{
		ModelAndView mv = new ModelAndView();	
		try {
			boolean auth =this.userServ.login(user);			
			if(auth) {
				session.setAttribute("uname",user.getUserName());
				session.setAttribute("uPassword",user.getUserPassword());
				mv.setViewName("home");
			} else {
				
				mv.addObject("msg","Invalid UserName and Password");			
				mv.setViewName("index");
				return mv;
			}
			
			return mv;
		} catch(Exception e) {
			System.out.println(e);
			mv.setViewName("index");
		}	
		return mv;
	}
	
	@GetMapping("/index")
	public ModelAndView loginPage() 
	{
		ModelAndView mv = new ModelAndView();	
		
		String str = (String) session.getAttribute("uname");
		String str1 = (String) session.getAttribute("uPassword");
		
		try {
			if(str != null && str1 !=null)
				{
					mv.setViewName("home");					
				}
			else
				{
					mv.setViewName("index");
				}
			}catch(Exception e)
			{
				mv.setViewName("index");
			}
		
		return mv;
	}
	
	/*
	private void addUserInSession(User l)
	{
		session.setAttribute("uname",l.getUserName());
		session.setAttribute("pass", l.getUserPassword());
		
	}
	*/
	
	@GetMapping("/logout")
	public ModelAndView logout()
	{
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		mv.setViewName("index");
		return mv;
	}
	
	@GetMapping("/home")
	public ModelAndView signinPage1() 
	{
		ModelAndView mv = new ModelAndView();
		
		//mv.setViewName("home");

		String str = (String) session.getAttribute("uname");
		String str1 = (String) session.getAttribute("uPassword");
		
		try {
			if(str != null && str1 !=null)
				{
					mv.setViewName("home");					
				}
			else
				{
					mv.setViewName("index");
				}
			}catch(Exception e)
			{
				mv.setViewName("index");
			}
		return mv;
	}
	
	
	/*@PostMapping("/home")
	public ModelAndView vuser(User user) 
	{
		
		ModelAndView mv = new ModelAndView();
		try {
			
			
			boolean auth =this.userServ.login(user);			
			if(auth) {
				session.setAttribute("uname",user.getUserName());
				session.setAttribute("uPassword",user.getUserPassword());
				mv.setViewName("home");
			} else {
				mv.addObject("Enter Valid Credentials");
				mv.setViewName("index");
			}
			
			return mv;
		} catch(Exception e) {
			System.out.println(e);
			mv.setViewName("index");
		}	
		return  mv;
	}*/
	
	
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
	
	@GetMapping("/contact")
	public ModelAndView contactPage() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");	
		return mv;
	}
	
	@GetMapping("/about")
	public ModelAndView aboutPage() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");	
		return mv;
	}
	
}
