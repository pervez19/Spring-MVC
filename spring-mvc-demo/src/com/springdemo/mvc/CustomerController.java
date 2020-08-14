package com.springdemo.mvc;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springdemo.mvc.model.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		StringTrimmerEditor stringTrimmerEditor=new StringTrimmerEditor(true);
		binder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	
	
	
	@RequestMapping("/showForm")
	public String showFrom(Model model)
	{
		Customer customer=new Customer();
		model.addAttribute("customer", customer);
		return "customerForm";
	}
	
	@RequestMapping("/processForm")
	public String processForm( @Valid  @ModelAttribute("customer") Customer customer,
					BindingResult bindingResult) 
	{
		if(bindingResult.hasErrors())
			return "customerForm";
		else
			return "customerConfirm";
		
		
	}
}
