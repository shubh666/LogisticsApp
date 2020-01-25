package com.project.model;

public class Package {
	
	private String packageId;
	private String packageWeight;
	private String sorce;
	private String destination;
	private String amount;
	private String status;
	
	public String getPackageId() {
		return packageId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setPackageId(String packageId) {
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
