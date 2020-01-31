package com.project.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

public class Vehicle {
	
	@NotEmpty(message = "vehicle number can not be empty")
	private String vNo;
	@NotBlank(message = "vehicle type can not blank")
	private String vType;
	@NotEmpty(message = "loadCap can not be empty")
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
