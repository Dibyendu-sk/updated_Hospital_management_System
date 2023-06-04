package com.example.project.demo.CONTROLLER;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.project.demo.ENTITY.User;
import com.example.project.demo.SERVICE.UserService;


@Controller
@RequestMapping("/users")
public class UserController {
	@Autowired
	UserService us;
	
	@GetMapping("/signUp")
	public String signUp(Model model) {
		model.addAttribute("user", new User());
		return "signup";
	}
	
	@PostMapping("/saveUser")
    public String saveUser(@ModelAttribute("user") User user,RedirectAttributes ra) {
        us.saveUser(user);
        ra.addFlashAttribute("successMessage", "User registered successfully!");
        return "redirect:/users/signUp";
    }
}
