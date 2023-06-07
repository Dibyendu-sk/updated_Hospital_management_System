package com.example.project.demo.SERVICE;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.project.demo.ENTITY.Specialist;
import com.example.project.demo.REPOSITORY.SpecialistRepo;

@Service
public class SpecialistServiceImpl implements SpecialistService {
	
	@Autowired
	private SpecialistRepo sr;
	@Override
	public List<String> getAllSpecialists() {
		// TODO Auto-generated method stub
		List<Specialist> sList=sr.findAll();
		List<String> names = new ArrayList<>();
		
		for(Specialist s:sList) {
			names.add(s.getSpecialistName());
		}
		
		return names;
	}
	
}
