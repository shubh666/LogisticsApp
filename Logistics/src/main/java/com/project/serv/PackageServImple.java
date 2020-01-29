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
	public boolean createPackage(Package pkg) {
		// TODO Auto-generated method stub
		return packagedao.createPackage(pkg);
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

	//shubham
	@Override
	public int getpid(Package p) {
		// TODO Auto-generated method stub
		return packagedao.getpid(p);
	}

	@Override
	public Iterable<Package> dispatchDisplay() {
		// TODO Auto-generated method stub
		return packagedao.dispatchDisplay();
	}

	@Override
	public boolean assignPE(Package pkg) {
		// TODO Auto-generated method stub
		return packagedao.assignPE(pkg);
	}

	@Override
	public boolean changeStatus(Package pkg) {
		// TODO Auto-generated method stub
		return packagedao.changeStatus(pkg);
	}

	@Override
	public boolean changeDelivered(Package pkg) {
		// TODO Auto-generated method stub
		return packagedao.changeDelivered(pkg);
	}

	@Override
	public Iterable<Package> showDelivered() {
		// TODO Auto-generated method stub
		return packagedao.showDelivered();
	}

	@Override
	public Iterable<Package> historyAll() {
		// TODO Auto-generated method stub
		return packagedao.historyAll();
	}
	
	@Override
	public String getVno(Package p) {
		// TODO Auto-generated method stub
		return packagedao.getVno(p);
	}
}
