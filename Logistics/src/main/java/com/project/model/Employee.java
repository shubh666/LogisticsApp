package com.project.model;

public class Employee {
	
	private int employeeId;
	private String employeeName;
	private String employeePhone;
	private String employeeDoj;
	private String employeeSalary;
	private String employeeLicense;
	private int departmentId;
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
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
}
