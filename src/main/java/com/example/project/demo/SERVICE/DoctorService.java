package com.example.project.demo.SERVICE;

import java.util.List;

import com.example.project.demo.ENTITY.Doctor;

public interface DoctorService {

	Doctor saveDoctor(Doctor doctor, String hp);

	List<Doctor> listDoctors();

}
