package com.example.project.demo.CONTROLLER;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.project.demo.ENTITY.Appointment;
import com.example.project.demo.ENTITY.User;
import com.example.project.demo.HASHING.hash;

@Controller
@RequestMapping(value="/appointments")
public class AppointmentController {
	
	@GetMapping("/userAppointment")
	public ModelAndView userAppointment() {
		return new ModelAndView("user_appointment");
	}
	
	@PostMapping("/addAppointment")
public String addAppointment(@ModelAttribute("appointment") Appointment appointment,HttpServletRequest request) {
	        
			
	        return "redirect:/appointments/userAppointment";
    }
}
