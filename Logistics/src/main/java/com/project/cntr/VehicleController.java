package com.project.cntr;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public ModelAndView vehicleRegister(@Valid@ModelAttribute("vehicle")Vehicle vehicle,BindingResult result) 
	{	
		ModelAndView mv = new ModelAndView();
		if(result.hasErrors()) {
			mv.setViewName("vehicleRegister");
			return mv;
		}
		boolean register=this.vehicleServ.vehiReg(vehicle);
		if(register)
		{
			mv.addObject("msg", "Vehicle Registered Successfully ");
			mv.setViewName("vehicleRegister");
		}
		else
		{
			mv.addObject("msg", "Vehicle Not Registered");
			mv.setViewName("vehicleRegister");
		}
		return mv;
	}
}
