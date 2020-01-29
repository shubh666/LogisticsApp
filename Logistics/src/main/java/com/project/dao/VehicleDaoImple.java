package com.project.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.model.Vehicle;

@Repository
public class VehicleDaoImple implements VehicleDao
{
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) 
	{
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public boolean vehiReg(Vehicle vehicle) {
		// TODO Auto-generated method stub
		
		try {
			String sql = "INSERT INTO vehicle(vehicleno,vehicletype,loadcapacity) VALUES (?, ?, ?)";
			jdbcTemplate.update(sql, vehicle.getvNo(), vehicle.getvType(), vehicle.getLoadCap());
			
			return true;	
			
			}
			catch(Exception e) {
				
				return false;
				
			}
			
		
	}
	
	@Override
	public Iterable<Vehicle> findAll() {
		
		String str="Removed";
		String sql="SELECT * FROM vehicle where status!=?";
		
		List<Vehicle> list = jdbcTemplate.query(sql, new Object[] {str} ,new RowMapper<Vehicle>() {

			@Override
			public Vehicle mapRow(ResultSet rs, int rowNum) throws SQLException {
				Vehicle vehicle = new Vehicle();

				vehicle.setvNo(rs.getString(1));;
				vehicle.setvType(rs.getString(2));
				vehicle.setLoadCap(rs.getString(3));
				vehicle.setvStatus(rs.getString(4));

				return vehicle;
			}
	
		
		
		});
		
		return list;

	}

	@Override
	public boolean changeStatus(Vehicle vehicleStatus) {
		
		try {
				String sql = "update vehicle set status='Removed' where vehicleno=? ";
				jdbcTemplate.update(sql, vehicleStatus.getvNo());
			
				return true;	
			
			}
			catch(Exception e) {
				
				return false;
				
			}
		
	}

}
