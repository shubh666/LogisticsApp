package com.project.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Employee 
{	
	private int employeeId;
	@NotEmpty(message = "employeeName should not be null")
	private String employeeName;
	@Size(min = 10,max = 10)
	private String employeePhone;
	@NotEmpty(message = "dob should not be null")
	private String employeeDoj;
	@NotEmpty(message = "salary can not be null")
	private String employeeSalary;
	@NotEmpty(message = "employeeLicense can not be null")
	private String employeeLicense;
	@NotEmpty(message = "deptName can not be null")
	private String deptName;
	
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	private String status;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public String getEmployeeDoj() {
		return employeeDoj;
	}
	public void setEmployeeDoj(String employeeDoj) {
		this.employeeDoj = employeeDoj;
	}
	public String getEmployeeSalary() {
		return employeeSalary;
	}
	public void setEmployeeSalary(String employeeSalary) {
		this.employeeSalary = employeeSalary;
	}
	public String getEmployeeLicense() {
		return employeeLicense;
	}
	public void setEmployeeLicense(String employeeLicense) {
		this.employeeLicense = employeeLicense;
	}
	
}
