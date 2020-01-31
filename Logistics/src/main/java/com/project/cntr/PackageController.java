package com.project.cntr;

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
import com.project.model.Package;
import com.project.model.Vehicle;
import com.project.serv.PackageServ;

@Controller
public class PackageController {

	@Autowired
	private PackageServ packageServ;

	@GetMapping("/package")
	public ModelAndView packagePage() {
		ModelAndView model = new ModelAndView();
		Iterable<Package> listPackage = packageServ.findAll();
		model.addObject("listPackage", listPackage);
		model.setViewName("package");
		return model;

	}

	
	
	 @GetMapping("/dispatch")
	 public ModelAndView packagedispatchPage(Package pkg){
	  
	    ModelAndView mv = new ModelAndView();
	    Iterable<Package> listPackage = packageServ.findAll();
	    mv.addObject("listPackage", listPackage);
	    mv.setViewName("package");
	    return mv;
	  }
	 
	
	@PostMapping("/dispatch")
	public ModelAndView packagedispatchPage2(Package pkg) {
		ModelAndView mv = new ModelAndView();
		Iterable<Vehicle> listVehicle = packageServ.findVehicle();
		Iterable<Employee> listEmployee = packageServ.findEmployee();
		mv.addObject("listVehicle", listVehicle);
		mv.addObject("listEmployee", listEmployee);
		int pid = packageServ.getpid(pkg);
		mv.addObject("packageId", pid);		 
		mv.setViewName("dispatch");
		return mv;
	}

	@GetMapping("/packageRegister")
	public ModelAndView packageRegPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("packageRegister");
		return mv;
	}

	@PostMapping("/packageRegister")
	public ModelAndView packageRegister(@Valid@ModelAttribute("pkg")Package pkg,BindingResult result) {
		
		
		ModelAndView mv = new ModelAndView();
		if(result.hasErrors()) {
			mv.setViewName("packageRegister");
			return mv;
		}
		
		boolean b=this.packageServ.createPackage(pkg);
		if(b)
		{
			mv.addObject("msg","Package Registerd Succesfully");
			mv.setViewName("packageRegister");
		}
		else
		{
			mv.addObject("msg","Package Not Registerd");
			mv.setViewName("packageRegister");
		}
		return mv;
	}


	@GetMapping("/status")
	public ModelAndView packageStatusPage() {
		ModelAndView model = new ModelAndView();
		Iterable<Package> listPackageStatus = packageServ.dispatchDisplay();
		model.addObject("listPackageStatus", listPackageStatus);
		model.setViewName("status");
		return model;
	}

	
	@PostMapping("/status")
	public ModelAndView packageStatusPageAfter(Package pkg) {
		ModelAndView model = new ModelAndView();
		this.packageServ.changeStatus(pkg);
		this.packageServ.assignPE(pkg);
		Iterable<Package> listPackageStatus = packageServ.dispatchDisplay();
		model.addObject("listPackageStatus", listPackageStatus);
		model.setViewName("status");
		return model;
	}

	
	
	@PostMapping("/location")
	public ModelAndView location(Package p) 
	{
		ModelAndView model = new ModelAndView();
		//Iterable<Package> listPackageStatus = packageServ.findAll();
		//model.addObject("listPackageStatus", listPackageStatus);
		String vid = packageServ.getVno(p);
		model.addObject("vehicleId", vid);	
		model.setViewName("location");
		return model;

	}

	@GetMapping("/history")
	public ModelAndView history() {

		ModelAndView model = new ModelAndView();
		Iterable<Package> listPackage = packageServ.historyAll();
		model.addObject("listPackage", listPackage);
		model.setViewName("history");

		return model;

	}

	
	@GetMapping("/delivered")
	 public ModelAndView delivered2(Package pkg) 
	 { 
		  ModelAndView model = new ModelAndView();
		  Iterable<Package> listPackageStatus = packageServ.showDelivered(); 
		  model.addObject("listPackageStatus", listPackageStatus);
		  model.setViewName("delivered");
		  return model;
	  }
	
	 @PostMapping("/delivered")
	 public ModelAndView delivered(Package pkg) 
	 { 
		  ModelAndView model = new ModelAndView();
		  this.packageServ.changeDelivered(pkg); 
		  Iterable<Package> listPackageStatus = packageServ.showDelivered(); 
		  model.addObject("listPackageStatus", listPackageStatus);
		  model.setViewName("delivered");
		  return model;
	  }
}
