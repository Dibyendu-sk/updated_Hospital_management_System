package com.example.project.demo.CONTROLLER;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controller {
	@GetMapping("/")
	public ModelAndView myIndex() {
		return new ModelAndView("index");
	}
	
	@GetMapping("/doctorLogin")
	public ModelAndView doctorLogin() {
		return new ModelAndView("doctor_login");
	}
	
	
	@GetMapping("/viewAppointment")
	public ModelAndView viewAppointment() {
		return new ModelAndView("view_appointment");
	}
	
	
	@GetMapping("/changePassword")
	public ModelAndView changePassword() {
		return new ModelAndView("change_password");
	}
}
