package com.project.serv;

import org.springframework.stereotype.Service;

import com.project.model.Employee;
import com.project.model.Package;
import com.project.model.PackageStatus;
import com.project.model.Vehicle;

	@Service
	public interface PackageServ {

	public boolean createPackage(Package pkg);
	
	public Iterable<Package> findAll();
	
	public Iterable<Vehicle> findVehicle();
	
	public Iterable<Employee> findEmployee();
	
	//shubham
	public int getpid(Package p);
	
	public Iterable<Package> dispatchDisplay();
	
	public boolean assignPE(Package pkg);
	
	public boolean changeStatus(Package pkg);
	
	public boolean changeDelivered(Package pkg);
	
	public Iterable<Package> showDelivered();
	
	public Iterable<Package> historyAll();
}
