package com.example.project.demo.REPOSITORY;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project.demo.ENTITY.Specialist;

public interface SpecialistRepo extends JpaRepository<Specialist,Integer> {

}
