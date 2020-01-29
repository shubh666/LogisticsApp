package com.project.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.EmployeeDao;
import com.project.model.Employee;

@Service
public class EmployeeServImple implements EmployeeServ {

	@Autowired
	private EmployeeDao empDao;
	
	@Override
	public boolean create(Employee emp) {
		
		return empDao.create(emp);
	}

	@Override
	public Iterable<Employee> findAll() {
		// TODO Auto-generated method stub
		return empDao.findAll();
	}

	@Override
	public boolean changeEmployeeStatus(Employee employeeStatus) {
		
		return empDao.changeEmployeeStatus(employeeStatus);
	}

	@Override
	public Iterable<Employee> findById(Employee emp) {
		// TODO Auto-generated method stub
		return empDao.findById(emp);
	}

	@Override
	public boolean updateEmployeeStatus(Employee emp) {
		// TODO Auto-generated method stub
		return empDao.updateEmployeeStatus(emp);
	}

	
}
