package com.project.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.project.model.User;
import com.project.model.Vehicle;

@Repository
public class UserDaoImple implements UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public boolean login(User user) {
		
		String sql="select * from user where username=? and password=?";
		System.out.print(sql);
		User u=jdbcTemplate.queryForObject(sql, new Object[] {user.getUserName(),user.getUserPassword()}, new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User p=new User();
				p.setUserName(rs.getString(2));
				p.setUserPassword(rs.getString(3));
				return p;
			}
			
		});
		if(u==null)
		{
			return false;
		}
		
		return true;
	}

	@Override
	public boolean create(User user) {
		try
		{
			String sql = "INSERT INTO user VALUES (?, ?, ?, ?, ?)";
			jdbcTemplate.update(sql, user.getUserId(),user.getUserName(),user.getUserPassword(),user.getEmailId(),user.getPhone());
		
			return true;
		}
		catch(Exception e) {
			
			return false;
			
		}
	}


	@Override
	public boolean resetPassword(User user) {
				
		try {
				String sql = "update user set password=? where userid=? and username=?";
				int i=jdbcTemplate.update(sql, user.getUserPassword(),user.getUserId(),user.getUserName());
			
				if(i==0)
				{
					return false;
				}
				return true;	
			
			}
			catch(Exception e) {
				
				
				return false;
				
			}
	}
	
	
	
}
