package com.project.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class AjaxServImple  implements AjaxServ{


	@Autowired
	JdbcTemplate jdbcTemplate;
	
	

	@Override
	public boolean isUsernameExist(String userName) {
		String sql = "select count(username) from user where username = ?";
		Integer count = jdbcTemplate.queryForObject(sql,new Object[] {userName}, Integer.class);
		if(count == 1)
			return true;
		else
			return false;
		
	}


}
