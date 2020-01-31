package com.project.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class PackageAjaxServimple  implements PackageAjaxServ{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	@Override
	public boolean isPackageIdExist(String packageId) {
		int i = Integer.parseInt(packageId);
		String sql = "select count(packageid) from package where packageid = ?";
		Integer count = jdbcTemplate.queryForObject(sql,new Object[] {i}, Integer.class);
		if(count == 1)
			return true;
		else
			return false;
		
	}
}


