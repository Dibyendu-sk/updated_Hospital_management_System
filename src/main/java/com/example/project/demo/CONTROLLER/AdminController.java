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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.project.demo.ENTITY.Doctor;
import com.example.project.demo.ENTITY.Specialist;
import com.example.project.demo.ENTITY.User;
import com.example.project.demo.HASHING.hash;
import com.example.project.demo.SERVICE.DoctorService;
import com.example.project.demo.SERVICE.SpecialistService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private DoctorService ds;
	
	@Autowired
	private SpecialistService ss;
	
	@GetMapping("/adminLogin")
	public String adminLogin() {
		return "admin_login";
	
	}
	
	@PostMapping("/adminHome")
	public String adminHome(HttpServletRequest req,HttpSession session) {
		
		String email=req.getParameter("adminEmail");
		String password = req.getParameter("adminPassword");
		
		if(email.equals("admin@gmail.com") && password.equals("admin")) {
			return "/adminJsp/admin_index";
		}
		
		else {
			session.setAttribute("errorMsg","Wrong email or password");
			return "redirect:/admin/adminLogin";
		}
	
	}
	
	@GetMapping("/addDoctorPage")
	public String addDoctorPage(Model model,HttpSession session) {
		model.addAttribute("doctor",new Doctor());
		
		List<String> sList=this.ss.getAllSpecialists();
		session.setAttribute("sList", sList);
		
		return "/adminJsp/doctor";
	}
	
	@PostMapping("/addDoctor")
    public String saveUser(@ModelAttribute("doctor") Doctor doctor,HttpServletRequest request,HttpSession session) {
		
		String pass=request.getParameter("password");
		
		String hp=hash.getMd5(pass);
		
			Doctor doct=ds.saveDoctor(doctor,hp);
			
			if(doct!=null) {
				session.setAttribute("successMsg", "Doctor successfully saved");
				return "redirect:/admin/addDoctorPage";
			}
			else {
				session.setAttribute("errMsg","Something went wrong");
				return "redirect:/admin/addDoctorPage";
			}
	        
    }
}
