package com.project.cntr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Vehicle;
import com.project.serv.VehicleServ;

@Controller
public class VehicleController 
{
	@Autowired
	private VehicleServ vehicleServ;
	
	@GetMapping("/vehicle")
	public ModelAndView vehiclePage() 
	{
		ModelAndView model = new ModelAndView();
		Iterable<Vehicle> listVehicle = vehicleServ.findAll();
		model.addObject("listVehicle", listVehicle);
		model.setViewName("vehicle");
		return model;
	}
	
	@PostMapping("/vehicle")
	public ModelAndView changeVehicleStatus(Vehicle vehicleStatus) 
	{	
		ModelAndView mv = new ModelAndView();
		this.vehicleServ.changeStatus(vehicleStatus);
		Iterable<Vehicle> listVehicle = vehicleServ.findAll();
		mv.addObject("listVehicle", listVehicle);
		mv.setViewName("vehicle");
		return mv;
	}
	
	@GetMapping("/vehicleRegister")
	public ModelAndView vehicleRegPage() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vehicleRegister");
		return mv;
	}
	
	@PostMapping("/vehicleRegister")
	public ModelAndView vehicleRegister(Vehicle vehicle) 
	{	
		System.out.println();
		this.vehicleServ.vehiReg(vehicle);	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vehicleRegister");
		return mv;
	}
}
