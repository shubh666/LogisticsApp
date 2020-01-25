package com.project.serv;

import org.springframework.stereotype.Service;

import com.project.model.User;

@Service
public interface UserServ {

	public boolean login(User user);

	public boolean create(User user);
	
	public boolean resetPassword(User user);
}
