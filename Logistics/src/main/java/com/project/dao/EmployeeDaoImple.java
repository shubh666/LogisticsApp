package com.project.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.model.Employee;
import com.project.model.Vehicle;

@Repository
public class EmployeeDaoImple implements EmployeeDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean create(Employee emp) {
		try {
			
			String sql = "INSERT INTO employee(employeeid,employeeName,employeePhone,employeedoj,employeeSalary,employeeLicense,deptid) VALUES (?, ?, ?, ?, ?, ?, ?)";
			jdbcTemplate.update(sql, emp.getEmployeeId(),emp.getEmployeeName(),emp.getEmployeePhone(),emp.getEmployeeDoj(),emp.getEmployeeSalary(),emp.getEmployeeLicense(),emp.getDepartmentId());
			
			return true;	
			
			}
			catch(Exception e) {
				
				return false;
				
			}
	}

	@Override
	public Iterable<Employee> findAll() {
	
		List<Employee> list = jdbcTemplate.query("SELECT * FROM employee", new RowMapper<Employee>() {

			@Override
			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				Employee emp = new Employee();

				emp.setEmployeeId(rs.getInt(1));
				emp.setEmployeeName(rs.getString(2));
				emp.setEmployeePhone(rs.getString(3));
				emp.setEmployeeDoj(rs.getString(4));
				emp.setEmployeeSalary(rs.getString(5));
				emp.setEmployeeLicense(rs.getString(6));
				emp.setDepartmentId(rs.getInt(7));
				emp.setStatus(rs.getString(8));
				return emp;
			}
	
		
		
		});
		
		return list;
				
	}

}