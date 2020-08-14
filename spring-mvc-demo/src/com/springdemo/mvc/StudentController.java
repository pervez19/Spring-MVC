package com.springdemo.mvc;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springdemo.mvc.model.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Value("#{countryOptions}") 
	private Map<String, String> countryOptions;
	
	@Value("#{hobbies}")
	private Map<String, String> hobbies;
	
	@RequestMapping("/showForm")
	public String showForm(Model model)
	{
		
		Student student=new Student();
		
		model.addAttribute("student", student);
		model.addAttribute("countryOptions", countryOptions);
		model.addAttribute("hobbies", hobbies);
		
		return "studentForm";
	}
	
	@RequestMapping("processForm")
	public String processForm( @ModelAttribute("student") Student student)
	{
	return "studentConfirmForm";
		
	}
	
	
	
	
	
	
	
	
}
