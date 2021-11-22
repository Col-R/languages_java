package com.cole.languages.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cole.languages.models.Language;
import com.cole.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	@Autowired
	private LanguageRepository lRepo;
	// Get Every Single Language from Database and Return in ArrayList
	public List<Language> getAllLanguages(){
		return this.lRepo.findAll();
	}
	
	// get one language
	public Language getOneLanguage(Long id) {
		return this.lRepo.findById(id).orElse(null);
	}
	
	// create Language
	public Language createLanguage(Language language) {
		return this.lRepo.save(language);
	}
	//update language
	public Language editLanguage(Language language) {
		return this.lRepo.save(language);
	}
	//delete language
	public String deleteLanguage(Long id) {
		this.lRepo.deleteById(id);
		return "Language has been deleted";
	}
}
