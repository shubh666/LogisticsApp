package com.project.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserDao;
import com.project.dao.VehicleDao;
import com.project.model.Vehicle;

@Service
public class VehicleServImple implements VehicleServ {

	@Autowired
	private VehicleDao vehicleDao;
	
	@Override
	public boolean vehiReg(Vehicle vehicle) {
		// TODO Auto-generated method stub
		return vehicleDao.vehiReg(vehicle);
	}

	@Override
	public Iterable<Vehicle> findAll() {
		// TODO Auto-generated method stub
		return vehicleDao.findAll();
	}

}
