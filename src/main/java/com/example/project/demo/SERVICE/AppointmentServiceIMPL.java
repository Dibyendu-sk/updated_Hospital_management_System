package com.example.project.demo.SERVICE;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.demo.ENTITY.Appointment;
import com.example.project.demo.REPOSITORY.AppointmentRepo;

@Service
public class AppointmentServiceIMPL implements AppointmentService {
	
	@Autowired
	private AppointmentRepo ar;
	@Override
	public void addAppointment(Appointment appointment) {
		// TODO Auto-generated method stub
		ar.save(appointment);
	}

}
