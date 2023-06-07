package com.example.project.demo.SERVICE;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.demo.ENTITY.Doctor;
import com.example.project.demo.REPOSITORY.DoctorRepo;

@Service
public class DoctorServiceIMPL implements DoctorService {

	@Autowired
	private DoctorRepo dr;
	@Override
	public Doctor saveDoctor(Doctor doctor, String hp) {
		// TODO Auto-generated method stub
		
		Doctor d=new Doctor();
		
		d.setDob(doctor.getDob());
		d.setEmail(doctor.getEmail());
		d.setFullName(doctor.getFullName());
		d.setMobileNumber(doctor.getMobileNumber());
		d.setPassword(hp);
		d.setQualification(doctor.getQualification());
		d.setSpecialist(doctor.getSpecialist());
		
		return dr.save(d);
	}
	
	@Override
	public List<Doctor> listDoctors() {
		// TODO Auto-generated method stub
		return dr.findAll();
	}

}
