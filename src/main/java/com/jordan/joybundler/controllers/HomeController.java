package com.jordan.joybundler.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.jordan.joybundler.services.PersonService;
import com.jordan.joybundler.services.UserService;

import jakarta.servlet.http.HttpSession;
@Controller
public class HomeController {

	@Autowired
	private PersonService personServ;
	
	@Autowired
	private UserService userServ;
	
	@GetMapping("/home")
	public String Home(Model model, HttpSession session) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/";
		}
		model.addAttribute("user", userServ.getUser((Long)session.getAttribute("user_id")));
		model.addAttribute("allPerson", personServ.allPerson());
		return "Home.jsp";
	}
}
