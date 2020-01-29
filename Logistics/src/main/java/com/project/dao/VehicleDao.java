package com.project.dao;

import com.project.model.Vehicle;

public interface VehicleDao {

	public boolean vehiReg(Vehicle vehicle);
	
	public Iterable<Vehicle> findAll();
	
	public boolean changeStatus(Vehicle vehicleStatus);
}
