package com.jordan.joybundler.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.jordan.joybundler.models.Person;
import com.jordan.joybundler.services.PersonService;
import com.jordan.joybundler.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class PersonController {
	
	@Autowired
	private PersonService personServ;
	@Autowired
	private UserService userServ;
	// Create a Person
		@GetMapping("/names/new")
		public String getPerson(@ModelAttribute("newPerson") Person person, Model model) {
			return "PersonCreate.jsp";
		}

		@PostMapping("/process/person/create")
		public String createBook(
			@Valid @ModelAttribute("newPerson") 
			Person person, 
			BindingResult result, 
			Model model) {
			if(result.hasErrors()) {
				return "PersonCreate.jsp";
			}
			personServ.create(person);
			return"redirect:/home";
		}
		
////		View One page
		@GetMapping("names/{id}")
		public String showOnePerson(@PathVariable("id") Long id, Model model) {
			model.addAttribute("person", personServ.getOne(id));
			System.out.println(id);
			return "ViewOne.jsp";
		}

		@GetMapping("/names/{id}/edit")
		public String update(@PathVariable("id") Long id, Model model){
			model.addAttribute("person", personServ.getOne(id));
			return "Edit.jsp";
		}

////		Edit
		@PutMapping("/process/{id}/edit")
		public String updatePerson(
				@Valid @ModelAttribute("person")
				Person person,
				BindingResult result,
				@PathVariable("id")Long id,Model model) {
				if(result.hasErrors()) {
					return "Edit.jsp";
				}
				personServ.updateBook(person);
				return "redirect:/home";
		}
	
//		Delete
		@DeleteMapping("/delete/{id}")
		public String deletePerson(@PathVariable("id") Long id) {
			personServ.delete(id);
			return "redirect:/home";
		}
		
}
