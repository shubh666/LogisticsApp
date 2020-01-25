package com.project.serv;

import org.springframework.stereotype.Service;

import com.project.model.Employee;

@Service
public interface EmployeeServ {

	public boolean create(Employee emp);
	public Iterable<Employee> findAll();
}
