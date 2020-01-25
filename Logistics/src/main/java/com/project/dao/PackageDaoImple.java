package com.project.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.model.Employee;
import com.project.model.Package;
import com.project.model.Vehicle;

@Repository
public class PackageDaoImple implements PackageDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean create(Package pkg) {
		
			try {
			
			String sql = "INSERT INTO package(packageid,packageweight,source,destination,amount) VALUES (?, ?, ?, ?, ?)";
			jdbcTemplate.update(sql, pkg.getPackageId(),pkg.getPackageWeight(),pkg.getSorce(),pkg.getDestination(),pkg.getAmount());
			
			return true;	
			
			}
			catch(Exception e) {
				
				return false;
				
			}
	}

	@Override
	public Iterable<Package> findAll() {
		
		List<Package> list = jdbcTemplate.query("SELECT * FROM package where status='Not Dispatched'", new RowMapper<Package>() {

			@Override
			public Package mapRow(ResultSet rs, int rowNum) throws SQLException {
				Package pkg = new Package();
				
				pkg.setPackageId(rs.getString(1));
				pkg.setPackageWeight(rs.getString(2));
				pkg.setSorce(rs.getString(3));
				pkg.setDestination(rs.getString(4));
				pkg.setAmount(rs.getString(5));
		        pkg.setStatus(rs.getString(6));
				return pkg;
			}
	
		
		
		});
		
		return list;
	}

	@Override
	public Iterable<Vehicle> findVehicle() {
		
		
		List<Vehicle> list = jdbcTemplate.query("SELECT vehicleno FROM vehicle where status='Available' ", new RowMapper<Vehicle>() {

			@Override
			public Vehicle mapRow(ResultSet rs, int rowNum) throws SQLException {
				Vehicle vehicle = new Vehicle();

				vehicle.setvNo(rs.getString(1));

				return vehicle;
			}
	
		
		
		});
		
		return list;
	}

	@Override
	public Iterable<Employee> findEmployee() {
		
		List<Employee> list = jdbcTemplate.query("SELECT employeeId FROM employee where status='Available' ", new RowMapper<Employee>() {

			@Override
			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				Employee emp = new Employee();
	
				emp.setEmployeeId(rs.getInt("employeeId"));

				return emp;
			}
	
		
		
		});
		
		return list;
	}

}
