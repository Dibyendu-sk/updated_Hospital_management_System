package com.example.project.demo.REPOSITORY;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.project.demo.ENTITY.Appointment;

public interface AppointmentRepo extends JpaRepository<Appointment,Integer>{

}
