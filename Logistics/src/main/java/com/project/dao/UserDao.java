package com.project.dao;

import com.project.model.User;
import com.project.model.Vehicle;

public interface UserDao 
{
	
	public boolean login(User user);

	public boolean create(User user);

	public boolean resetPassword(User user);

}
