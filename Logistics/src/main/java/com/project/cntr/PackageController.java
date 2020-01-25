package com.project.cntr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Employee;
import com.project.model.Package;
import com.project.model.Vehicle;
import com.project.serv.PackageServ;

@Controller
public class PackageController {
	
	@Autowired
	private PackageServ packageServ;
	
	
	@GetMapping("/package")
	public ModelAndView packagePage() 
	{
		ModelAndView model = new ModelAndView();
		Iterable<Package> listPackage = packageServ.findAll();
		model.addObject("listPackage", listPackage);
		model.setViewName("package");
		return model;
		
	}
	
	
	@GetMapping("/dispatch")
	public ModelAndView packagedispatchPage() 
	{	
		ModelAndView mv = new ModelAndView();	
		Iterable<Vehicle> listVehicle = packageServ.findVehicle();
		Iterable<Employee> listEmployee = packageServ.findEmployee();
		mv.addObject("listVehicle", listVehicle);
		mv.addObject("listEmployee", listEmployee);
		mv.setViewName("dispatch");
		return mv;
	}
	
	
	@GetMapping("/packageRegister")
	public ModelAndView packageRegPage() 
	{	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("packageRegister");
		return mv;
	}
	
	
	@PostMapping("/packageRegister")
	public ModelAndView packageRegister(Package pkg) {	
		System.out.println();
		this.packageServ.create(pkg);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("packageRegister");	
		return mv;
	}
}
