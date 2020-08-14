package com.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm()
	{
		return "helloWorldForm";
	}
	
	@RequestMapping("/processForm")
	public String processForm()
	{
		return "helloWorld";
	}
	
	@RequestMapping("/processFormVersion2")
	public String processFormVersion2(HttpServletRequest request, Model model)
	{
		String student=request.getParameter("studentName");
		student=student.toUpperCase();
		String result="Yoh ! "+student;
		model.addAttribute("message", result);
		
		return "helloWorld";
		
	}
	@RequestMapping("/processFormVersion3")
	public String processFormVersion3(@RequestParam("studentName") String student, Model model)
	{
		System.out.println(student);
		student=student.toUpperCase();
		System.out.println("before: "+student);

		String result="Yoh ! My friend from v3 "+student;
		model.addAttribute("message", result);
		System.out.println("model: "+model);
		return "helloWorld";
		
	}
	
}
