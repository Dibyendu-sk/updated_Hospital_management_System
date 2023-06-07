package com.example.project.demo.CONTROLLER;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.project.demo.ENTITY.Appointment;
import com.example.project.demo.ENTITY.Doctor;
import com.example.project.demo.ENTITY.User;
import com.example.project.demo.SERVICE.AppointmentService;
import com.example.project.demo.SERVICE.DoctorService;

@Controller
@RequestMapping(value="/appointments")
public class AppointmentController {
	
	@Autowired
	private AppointmentService as;
	
	@Autowired
	private DoctorService ds;
	
	@GetMapping("/userAppointment")
	public String userAppointment(Model model) {
		
		model.addAttribute("appointment",new Appointment());
		return "user_appointment";
	}
	
	@PostMapping("/addAppointment")
	public String addAppointment(@ModelAttribute("appointment") Appointment appointment,HttpSession session) {
	        this.as.addAppointment(appointment);
	        
	        List<Doctor> doctorList=ds.listDoctors();
	        
			session.setAttribute("successMessage", "Appointment Successfull");
			session.setAttribute("doctorList", doctorList);
			
	        return "redirect:/appointments/userAppointment";
    }
}
