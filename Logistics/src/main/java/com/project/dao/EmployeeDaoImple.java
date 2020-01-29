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
	
		String str="Removed";
		String sql="SELECT * FROM employee where status != ?";
		
		List<Employee> list = jdbcTemplate.query(sql, new Object[] {str},new RowMapper<Employee>() {

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

	@Override
	public boolean changeEmployeeStatus(Employee employeeStatus) {
		
	   try {
			
			String sql = "update employee set status='Removed' where employeeid=? ";
			jdbcTemplate.update(sql, employeeStatus.getEmployeeId());
		
			return true;	
		
		}
		catch(Exception e) {
			
			return false;
			
		}
	}

	@Override
	public Iterable<Employee> findById(Employee emp) {
		
		int id = emp.getEmployeeId();
		String sql="SELECT * FROM employee where employeeId=?";
		
		List<Employee> list = jdbcTemplate.query(sql,  new Object[] {id} , new RowMapper<Employee>() {

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

	@Override
	public boolean updateEmployeeStatus(Employee emp) {
		 
		try {
				
				String sql = "update employee set employeeName=?,  employeePhone=?,employeeSalary=?,employeeLicense=?,deptid=? where employeeid=? ";
				jdbcTemplate.update(sql, emp.getEmployeeName() , emp.getEmployeePhone() , emp.getEmployeeSalary(), emp.getEmployeeLicense() , emp.getDepartmentId() ,emp.getEmployeeId());
			
				return true;	
			
			}
			catch(Exception e) {
				
				return false;
				
			}
	}

}
