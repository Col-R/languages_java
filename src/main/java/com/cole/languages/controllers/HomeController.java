package com.cole.languages.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.cole.languages.models.Language;
import com.cole.languages.services.LanguageService;

@Controller
public class HomeController {
	@Autowired
	private LanguageService lService;
	
	@GetMapping("/")
	public String index(@ModelAttribute("language")Language language,Model viewModel) {
		viewModel.addAttribute("allLanguages", this.lService.getAllLanguages());
		return "index.jsp";
	}
	
	//C
	@PostMapping("/new")
	public String addLanguage(@Valid @ModelAttribute("language")Language language, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		}
		this.lService.createLanguage(language);
		return "redirect:/";
	}
	//R
	@GetMapping("/show/{id}")
	public String showLanguage(@PathVariable("id") Long id, @ModelAttribute("language")Language language, Model viewModel) {
		viewModel.addAttribute("language", this.lService.getOneLanguage(id));
		return "show.jsp";
	}
	// U
	@GetMapping("/edit/{id}") 
	public String editLanguage(@PathVariable("id") Long id, @ModelAttribute("language")Language language, Model viewModel) {
		viewModel.addAttribute("language", this.lService.getOneLanguage(id));
		return "edit.jsp";
	}
	@PostMapping("edit/{id}") 
	public String edit(@Valid @ModelAttribute("language") Language language, BindingResult result, @PathVariable("id")Long id, Model viewModel) {
		if(result.hasErrors()) {
			viewModel.addAttribute("language", this.lService.getOneLanguage(id));
			return "edit.jsp";
		}
		this.lService.editLanguage(language);
		return "redirect:/";
	}
	//D
	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id")Long id) {
		this.lService.deleteLanguage(id);
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}