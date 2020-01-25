package com.project.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.PackageDao;
import com.project.model.Employee;
import com.project.model.Package;
import com.project.model.Vehicle;

@Service
public class PackageServImple implements PackageServ {
	
	@Autowired
	private PackageDao packagedao;

	@Override
	public boolean create(Package pkg) {
		// TODO Auto-generated method stub
		return packagedao.create(pkg);
	}

	@Override
	public Iterable<Package> findAll() {
		// TODO Auto-generated method stub
		return packagedao.findAll();
	}

	@Override
	public Iterable<Vehicle> findVehicle() {
		// TODO Auto-generated method stub
		return packagedao.findVehicle();
	}

	@Override
	public Iterable<Employee> findEmployee() {
		// TODO Auto-generated method stub
		return packagedao.findEmployee();
	}

	
	
	

}
