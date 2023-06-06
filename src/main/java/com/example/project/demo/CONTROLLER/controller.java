package com.example.project.demo.CONTROLLER;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.project.demo.ENTITY.User;

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
	
	
	@GetMapping("/viewAppointment")
	public ModelAndView viewAppointment() {
		return new ModelAndView("view_appointment");
	}
	
	
	@GetMapping("/changePassword")
	public ModelAndView changePassword() {
		return new ModelAndView("change_password");
	}
}
