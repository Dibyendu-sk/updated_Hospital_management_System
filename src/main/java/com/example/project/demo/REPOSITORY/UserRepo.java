package com.example.project.demo.REPOSITORY;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project.demo.ENTITY.User;

public interface UserRepo extends JpaRepository<User,Integer>{

}
