package com.example.demoProject.demoProject.CONTROLLER;

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
}
