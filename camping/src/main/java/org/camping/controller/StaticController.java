package org.camping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/static/*")
public class StaticController {
	
	@RequestMapping("staticList")
	public String staticsList() {
		
		
		
		
		
		
		return "static/staticList";	
	}
}
