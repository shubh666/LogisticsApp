package com.project.dao;

import com.project.model.Employee;
import com.project.model.Vehicle;

public interface EmployeeDao {

	public boolean create(Employee emp);
	
	public Iterable<Employee> findAll();
	
	public Iterable<Employee> findById(Employee emp);

	public boolean changeEmployeeStatus(Employee employeeStatus);
	
	public boolean updateEmployeeStatus(Employee emp);
}
