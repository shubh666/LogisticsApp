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
import com.project.model.PackageStatus;
import com.project.model.Vehicle;

@Repository
public class PackageDaoImple implements PackageDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean createPackage(Package pkg) 
	{
			try 
			{
				String sql = "INSERT INTO package(packageweight,source,destination,amount) VALUES (?, ?, ?, ?)";
				jdbcTemplate.update(sql, pkg.getPackageWeight(),pkg.getSorce(),pkg.getDestination(),pkg.getAmount());
				return true;
			}
			catch(Exception e) 
			{			
				return false;
			}
	}

	
	@Override
	public Iterable<Package> findAll() 
	{	
		String str="Not Dispatched";
		String sql="SELECT * FROM package where status=?";
		
		List<Package> list = jdbcTemplate.query(sql, new Object[] {str} ,new RowMapper<Package>() 
		{
			@Override
			public Package mapRow(ResultSet rs, int rowNum) throws SQLException 
			{
				Package pkg = new Package();
				pkg.setPackageId(rs.getInt(1));
				pkg.setPackageWeight(rs.getString(2));
				pkg.setSorce(rs.getString(3));
				pkg.setDestination(rs.getString(4));
				pkg.setAmount(rs.getString(5));
		        pkg.setStatus(rs.getString(6));
		        pkg.setEmployeeId(rs.getInt(7));
		        pkg.setVehicleId(rs.getString(8));
				return pkg;
			}	
		});
		return list;
	}

	
	@Override
	public Iterable<Vehicle> findVehicle() 
	{
		String str="Available";
		String sql="SELECT vehicleno FROM vehicle where status=? ";
		
		
		List<Vehicle> list = jdbcTemplate.query(sql, new Object[] {str} ,new RowMapper<Vehicle>() 
		{
			@Override
			public Vehicle mapRow(ResultSet rs, int rowNum) throws SQLException 
			{
				Vehicle vehicle = new Vehicle();
				vehicle.setvNo(rs.getString(1));
				return vehicle;
			}
		});
		
		return list;
	}

	
	@Override
	public Iterable<Employee> findEmployee() 
	{
		
		String str="Available";
		String sql="SELECT employeeId FROM employee where status= ? ";
		
		
		List<Employee> list = jdbcTemplate.query(sql,new Object[] {str} , new RowMapper<Employee>() 
		{
			@Override
			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException 
			{
				Employee emp = new Employee();
				emp.setEmployeeId(rs.getInt("employeeId"));
				return emp;
			}	
		});	
		return list;
	}

	
	//shubham
	@Override
	public int getpid(Package p) 
	{
		int p1 = p.getPackageId();
		return p1;
	}
	
	
	@Override
	public Iterable<Package> dispatchDisplay() 
	{
			String str="Dispatched";
			String sql="SELECT packageid,employeeId,vehicleno from package where status = 'Dispatched'";
			
		
			List<Package> list = jdbcTemplate.query(sql,new RowMapper<Package>() {
			@Override
			public Package mapRow(ResultSet rs, int rowNum) throws SQLException 
			{
				Package pkg = new Package();
				pkg.setPackageId(rs.getInt("packageid"));
				pkg.setEmployeeId(rs.getInt("employeeId"));
				pkg.setVehicleId(rs.getString("vehicleno"));
				return pkg;
			}	
		});
		return list;
	}
	
	
	@Override
	public boolean assignPE(Package pkg) 
	{
		try {
				String sql = "update package set vehicleno = ? , employeeId = ? where packageid = ?";
				jdbcTemplate.update(sql,pkg.getVehicleId(),pkg.getEmployeeId(), pkg.getPackageId());		
				return true;
			}
			catch(Exception e) 
			{	
				return false;	
			}	
	}
	
	
	@Override
	public boolean changeStatus(Package pkg) 
	{	
	    try 
	    {		
			String sql = "update employee set status = 'UnAvailable' where employeeId=?";
			jdbcTemplate.update(sql,pkg.getEmployeeId());
			 
			String sql1 = "update vehicle set status = 'UnAvailable' where vehicleno=?";
			jdbcTemplate.update(sql1,pkg.getVehicleId());
			
			String sql2 = "update package set status = 'Dispatched' where packageid=?";
			jdbcTemplate.update(sql2,pkg.getPackageId());
			return true;	
		}
		catch(Exception e) 
	    {	
			return false;	
		}
	}
	
	
	@Override
	public boolean changeDelivered(Package pkg) 
	{
		try 
		{
			/*
			 * String sql = "INSERT INTO delivered VALUES (?,now())";
			 * jdbcTemplate.update(sql, pkg.getPackageId());
			 */			
			String str="Delivered";
			String sql2= "update package set status = ? ,deliveryDate=now() where packageId = ?";
			String sql3= "update vehicle set status = 'Available' where vehicleno = ?";
			String sql4= "update employee set status = 'Available' where employeeId = ?";
			jdbcTemplate.update(sql2, str, pkg.getPackageId());
			jdbcTemplate.update(sql3, pkg.getVehicleId());
			jdbcTemplate.update(sql4, pkg.getEmployeeId());
			return true;
	
		}
		catch(Exception e)
		{
			return false;
		}
	}
	
	
	@Override
	public Iterable<Package> showDelivered() 
	{
		
		String str="Delivered";
		String sql="SELECT * FROM package where status=? ";
		
		List<Package> list = jdbcTemplate.query(sql, new Object[] {str} ,new RowMapper<Package>() 
		{
			@Override
			public Package mapRow(ResultSet rs, int rowNum) throws SQLException 
			{
				Package pkg = new Package();		
				pkg.setPackageId(rs.getInt(1));
				pkg.setDate(rs.getString("deliveryDate"));
				return pkg;
			}	
		});
		return list;
	}


	@Override
	public Iterable<Package> historyAll() {
	
		String str="Delivered";
		String sql="SELECT * FROM package where status=?";
		
		List<Package> list = jdbcTemplate.query(sql, new Object[] {str} ,new RowMapper<Package>() 
		{
			@Override
			public Package mapRow(ResultSet rs, int rowNum) throws SQLException 
			{
				Package pkg = new Package();
				pkg.setPackageId(rs.getInt(1));
				pkg.setPackageWeight(rs.getString(2));
				pkg.setSorce(rs.getString(3));
				pkg.setDestination(rs.getString(4));
				pkg.setAmount(rs.getString(5));
		        pkg.setStatus(rs.getString(6));
		        pkg.setEmployeeId(rs.getInt(7));
		        pkg.setVehicleId(rs.getString(8));
		        pkg.setDate(rs.getString(9));
				return pkg;
			}	
		});
		return list;
	}


	@Override
	public String getVno(Package p) {
		String s1 = p.getVehicleId();
		return s1;
	}
}
