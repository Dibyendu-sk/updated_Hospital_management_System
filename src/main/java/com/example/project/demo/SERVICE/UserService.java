package com.example.project.demo.SERVICE;

import com.example.project.demo.ENTITY.User;

public interface UserService {
	public void saveUser(User user,String hashed_pass);
	
	public User userLogin(String email,String password);
}
