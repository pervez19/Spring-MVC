package com.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/silly")
public class SillyController {
	@RequestMapping("/showForm")
	public String showForm()
	{
		return "sillyForm";
	}

	
	@RequestMapping("/processForm")
	public String ProcessForm()
	{
		return "silly";
	}
}
