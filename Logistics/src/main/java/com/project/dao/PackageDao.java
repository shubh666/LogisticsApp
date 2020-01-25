package com.project.dao;

import com.project.model.Employee;
import com.project.model.Package;
import com.project.model.Vehicle;

public interface PackageDao {

	public boolean create(Package pkg);
	
	public Iterable<Package> findAll();
	
	public Iterable<Vehicle> findVehicle();
	
	public Iterable<Employee> findEmployee();
}
