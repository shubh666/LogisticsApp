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
	
	@PostMapping("/employee")
	public ModelAndView changeEmployee(Employee employeeStatus) 
	{
		ModelAndView mv = new ModelAndView();
		this.empServ.updateEmployeeStatus(employeeStatus);
		/* String app = request.getParameter("deleteButton"); */ 		
		this.empServ.changeEmployeeStatus(employeeStatus);
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
		System.out.println("Employee ID:"+emp.getEmployeeId());
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
	public ModelAndView employeeRegister(Employee emp) 
	{
		this.empServ.create(emp);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("employee");
		return mv;
	}
}
