package com.project.cntr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.PackageStatus;
import com.project.serv.PackageStatusServ;

@Controller
public class PackageStatusController {
	
	@Autowired
	private PackageStatusServ packageStatusServ;
	
	@GetMapping("/status")
	public ModelAndView packageStatusPage() {
	
		ModelAndView model = new ModelAndView();
		
		Iterable<PackageStatus> listPackageStatus = packageStatusServ.findAll();
		model.addObject("listPackageStatus", listPackageStatus);
		model.setViewName("status");

		return model;
		
	}
	
	@PostMapping("/status")
	public ModelAndView packageStatusPageAfter(PackageStatus pkg) 
	{
		ModelAndView model = new ModelAndView();
		this.packageStatusServ.changeStatus(pkg);
		this.packageStatusServ.create(pkg);
		Iterable<PackageStatus> listPackageStatus = packageStatusServ.findAll();
		model.addObject("listPackageStatus", listPackageStatus);
		model.setViewName("status");
		return model;	
	}
	
	@GetMapping("/location")
	public ModelAndView location() {
	
		ModelAndView model = new ModelAndView();
		Iterable<PackageStatus> listPackageStatus = packageStatusServ.findAll();
		model.addObject("listPackageStatus", listPackageStatus);
		model.setViewName("location");

		return model;
		
	}
	
	
	@GetMapping("/delivered")
	public ModelAndView delivered(PackageStatus pkg) {
	
		ModelAndView model = new ModelAndView();
		this.packageStatusServ.create2(pkg);
		Iterable<PackageStatus> listPackageStatus = packageStatusServ.findAll1();
		model.addObject("listPackageStatus", listPackageStatus);
		model.setViewName("delivered");
		return model;
		
	}
	
	

}
