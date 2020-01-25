package com.project.serv;

import org.springframework.stereotype.Service;

import com.project.model.Vehicle;

@Service
public interface VehicleServ {

	public boolean vehiReg(Vehicle vehicle);

	public Iterable<Vehicle> findAll();
}
