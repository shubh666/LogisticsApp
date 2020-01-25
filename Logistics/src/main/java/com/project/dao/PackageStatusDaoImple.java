package com.project.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import com.project.model.PackageStatus;


@Repository
public class PackageStatusDaoImple implements PackageStatusDao {

	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean status(PackageStatus pkgs) {
		
		
		return false;
	}

	@Override
	public Iterable<PackageStatus> findAll() {
		// TODO Auto-generated method stub
		
		
		List<PackageStatus> list = jdbcTemplate.query("SELECT * FROM currentconsignment", new RowMapper<PackageStatus>() {

			@Override
			public PackageStatus mapRow(ResultSet rs, int rowNum) throws SQLException {
				PackageStatus pkg = new PackageStatus();
				
				pkg.setPackageId(rs.getInt(1));
				pkg.setVehicleId(rs.getString(2));
				pkg.setEmployeeId(rs.getInt(3));
				
		
				return pkg;
			}	
		
		});
		
		return list;
	}

	@Override
	public boolean create(PackageStatus pkg) {
	
		try {
			
				String sql = "INSERT INTO currentconsignment VALUES (?, ?, ?)";
				jdbcTemplate.update(sql, pkg.getPackageId(),pkg.getVehicleId(),pkg.getEmployeeId());			
				return true;	
			
			}
			catch(Exception e) {
				
				return false;
				
			}
		
	}

	@Override
	public boolean changeStatus(PackageStatus pkg) {
		
	    try {
			
			
			String sql = "update employee set status='UnAvailable' where employeeId=?";
			jdbcTemplate.update(sql,pkg.getEmployeeId());
			 
			
			String sql1 = "update vehicle set status='UnAvailable' where vehicleno=?";
			jdbcTemplate.update(sql1,pkg.getVehicleId());
			
			String sql2 = "update package set status='Dispatched' where packageid=?";
			jdbcTemplate.update(sql2,pkg.getPackageId());
			
			return true;	
		
		}
		catch(Exception e) {
			
			return false;
			
		}
	}

	//06:01pm
	@Override
	public boolean create2(PackageStatus pkg) {
		try 
		{
			String sql = "INSERT INTO delivered VALUES (?,now())";
			jdbcTemplate.update(sql, pkg.getPackageId());			
			return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	@Override
	public Iterable<PackageStatus> findAll1() {
		List<PackageStatus> list = jdbcTemplate.query("SELECT * FROM delivered", new RowMapper<PackageStatus>() {

			@Override
			public PackageStatus mapRow(ResultSet rs, int rowNum) throws SQLException {
				PackageStatus pkg = new PackageStatus();
				
				pkg.setPackageId(rs.getInt(1));
				pkg.setDate(rs.getString(2));
		
				return pkg;
			}	
		
		});
		
		return list;
	}

}
