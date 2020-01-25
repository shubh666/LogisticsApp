package com.project.dao;

import com.project.model.Employee;
import com.project.model.Vehicle;

public interface EmployeeDao {

	public boolean create(Employee emp);
	
	public Iterable<Employee> findAll();
	
}
