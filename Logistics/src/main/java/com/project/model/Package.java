package com.project.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

public class Package {
	

	private int packageId;	
	@NotBlank(message = "packageWeight can not be blank")
	private String packageWeight;
	@NotBlank(message = "sorce can not be blank")
	private String sorce;
	@NotBlank(message = "destination can not be blank")
	private String destination;
	@NotBlank(message = "amount can not be blank")
	private String amount;
	
	private String status;
	private int employeeId;
	private String vehicleId;
	private String date;
	
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}
	public int getPackageId() {
		return packageId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getPackageWeight() {
		return packageWeight;
	}
	public void setPackageWeight(String packageWeight) {
		this.packageWeight = packageWeight;
	}
	public String getSorce() {
		return sorce;
	}
	public void setSorce(String sorce) {
		this.sorce = sorce;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	
}
