package org.camping.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sec/*")
public class HomeController {
	
	@RequestMapping("main")
	public String main(HttpServletRequest request) {
		
		
		return "main";
	}

}
