
package com.project.serv;

import org.springframework.stereotype.Service;

import com.project.model.Package;
import com.project.model.PackageStatus;

@Service
public interface PackageStatusServ {
	
	public boolean status(PackageStatus pkg);
	
	public Iterable<PackageStatus> findAll();

	public boolean create(PackageStatus pkg);
	
	public boolean changeStatus(PackageStatus pkg);
	
	public boolean create2(PackageStatus pkg);
 
	public Iterable<PackageStatus> findAll1();
}
