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
	
	@GetMapping("/adminLogin")
	public ModelAndView adminLogin() {
		return new ModelAndView("admin_login");
	}
	
	@GetMapping("/doctorLogin")
	public ModelAndView doctorLogin() {
		return new ModelAndView("doctor_login");
	}
	
	@GetMapping("/userAppointment")
	public ModelAndView userAppointment() {
		return new ModelAndView("user_appointment");
	}
	
	@GetMapping("/userLogin")
	public ModelAndView userLogin() {
		return new ModelAndView("user_login");
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
