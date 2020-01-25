package com.project.cntr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Employee;
import com.project.model.Vehicle;
import com.project.serv.EmployeeServ;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeServ empServ;
	
	
	@GetMapping("/employee")
	public ModelAndView employeePage() 
	{
		ModelAndView model = new ModelAndView();
		Iterable<Employee> listEmployee = empServ.findAll();
		model.addObject("listEmployee", listEmployee);
		model.setViewName("employee");
		return model;
	}
	
	
	@GetMapping("/employeeRegister")
	public ModelAndView employeeRegPage() 
	{	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("employeeRegister");
		return mv;
	}
	
	
	@PostMapping("/employeeRegister")
	public ModelAndView employeeRegister(Employee emp) 
	{
		this.empServ.create(emp);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("employee");
		return mv;
	}
}
