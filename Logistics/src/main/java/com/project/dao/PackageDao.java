package com.project.dao;

import com.project.model.Employee;
import com.project.model.Package;
import com.project.model.PackageStatus;
import com.project.model.Vehicle;

public interface PackageDao {

	public boolean createPackage(Package pkg);
	
	public Iterable<Package> findAll();
	
	public Iterable<Vehicle> findVehicle();
	
	public Iterable<Employee> findEmployee();

	public int getpid(Package p);
	
	public Iterable<Package> dispatchDisplay();
	
	public boolean assignPE(Package pkg);
	
	public boolean changeStatus(Package pkg);
	
	public boolean changeDelivered(Package pkg);
	
	public Iterable<Package> showDelivered();
	
	public Iterable<Package> historyAll();

	public String getVno(Package p);
}
