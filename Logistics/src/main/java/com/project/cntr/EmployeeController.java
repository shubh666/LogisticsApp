package com.project.cntr;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@PostMapping("/employee")
	public ModelAndView changeEmployee(Employee employeeStatus, @RequestParam("deleteButton") boolean str, HttpServletRequest request) 
	{
		
		ModelAndView mv = new ModelAndView();
		if(str)
		{
			this.empServ.changeEmployeeStatus(employeeStatus);
		}
		else
		{
			this.empServ.updateEmployeeStatus(employeeStatus); 		
		}
		Iterable<Employee> listEmployee = empServ.findAll();
		mv.addObject("listEmployee", listEmployee);
		mv.setViewName("employee");
		return mv;
		
	}
	
	/*
	 * @GetMapping("/employeeUpdate") public ModelAndView updateEmployee1(Employee
	 * emp) { ModelAndView model = new ModelAndView(); Iterable<Employee>
	 * listEmployee = empServ.findAll(); model.addObject("listEmployee",
	 * listEmployee); model.setViewName("employeeUpdate"); return model; }
	 */
	
	@PostMapping("/employeeUpdate")
	public ModelAndView updateEmployee(Employee emp) 
	{
		ModelAndView mv = new ModelAndView();
		Iterable<Employee> listEmployee = empServ.findById(emp);
		mv.addObject("listEmployee", listEmployee);
		mv.setViewName("employeeUpdate");
		return mv;
	}
	
	@GetMapping("/employeeRegister")
	public ModelAndView employeeRegPage() 
	{	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("employeeRegister");
		return mv;
	}
	
	
	@PostMapping("/employeeRegister")
	public ModelAndView employeeRegister(@Valid @ModelAttribute("emp")Employee emp,BindingResult result) 
	{
		ModelAndView mv = new ModelAndView();

		if(result.hasErrors()) {
			mv.setViewName("employeeRegister");
			return mv;
		}
		
		boolean register=this.empServ.create(emp);
		if(register)
		{
			mv.addObject("msg", "Employee Registered Succesfully");
			mv.setViewName("employeeRegister");
		}
		else
		{
			mv.addObject("msg", "Employee Not Registered");
			mv.setViewName("employeeRegister");
		}
		/*
		 * Iterable<Employee> listEmployee = empServ.findAll();
		 * mv.addObject("listEmployee", listEmployee);
		 */
		
		return mv;
	}
}
