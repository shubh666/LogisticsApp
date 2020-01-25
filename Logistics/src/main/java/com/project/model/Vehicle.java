package com.project.model;

public class Vehicle {

	private String vNo;
	private String vType;
	private String loadCap;
	private String vStatus;
	
	public String getvStatus() {
		return vStatus;
	}
	public void setvStatus(String vStatus) {
		this.vStatus = vStatus;
	}
	public String getvNo() {
		return vNo;
	}
	public void setvNo(String vNo) {
		this.vNo = vNo;
	}
	public String getvType() {
		return vType;
	}
	public void setvType(String vType) {
		this.vType = vType;
	}
	public String getLoadCap() {
		return loadCap;
	}
	public void setLoadCap(String loadCap) {
		this.loadCap = loadCap;
	}
	
	
}
