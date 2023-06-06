package com.example.project.demo.CONTROLLER;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.project.demo.ENTITY.User;
import com.example.project.demo.HASHING.hash;
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
    public String saveUser(@ModelAttribute("user") User user,RedirectAttributes ra,HttpServletRequest request) {
		
		String pass=request.getParameter("password");
		
		String hp=hash.getMd5(pass);
		
			us.saveUser(user,hp);
	        ra.addFlashAttribute("successMessage", "User registered successfully!");
	        return "redirect:/users/signUp";
    }
	
	@GetMapping("/userLogin")
	public String userLogin(Model model) {
		model.addAttribute("user",new User());
		return "user_login";
	}
	
	@PostMapping("/loginProcess")
	public String processLogin(RedirectAttributes ra,HttpServletRequest request) {
		
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		
		String password=hash.getMd5(pass);
		
		User u=us.userLogin(email, password);
		
		if(u!=null) {
			
			
			return "/";
		}
		else {
		
		return "redirect:/users/userLogin";
		}
	}
}
