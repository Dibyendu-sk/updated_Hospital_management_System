package com.example.project.demo.REPOSITORY;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project.demo.ENTITY.Doctor;

public interface DoctorRepo extends JpaRepository<Doctor,Integer> {

}
