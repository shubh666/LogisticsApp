package com.project.serv;

import org.springframework.stereotype.Service;

import com.project.model.Employee;
import com.project.model.Package;
import com.project.model.Vehicle;

	@Service
	public interface PackageServ {

	public boolean create(Package pkg);
	
	public Iterable<Package> findAll();
	
	public Iterable<Vehicle> findVehicle();
	
	public Iterable<Employee> findEmployee();
	
	
	
}
