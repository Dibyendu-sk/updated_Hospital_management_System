package com.example.project.demo.SERVICE;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.demo.ENTITY.User;
import com.example.project.demo.REPOSITORY.UserRepo;

@Service
public class UserServiceIMPL implements UserService {
	@Autowired
	private UserRepo ur;

	@Override
	public void saveUser(User user,String hashed_pass) {
		// TODO Auto-generated method stub
		user.setPassword(hashed_pass);
		ur.save(user);
	}

	@Override
	public User userLogin(String email, String password) {
		// TODO Auto-generated method stub
		return ur.findByEmailAndPassword(email, password);
		
	}
}
