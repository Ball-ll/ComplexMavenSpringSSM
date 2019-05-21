package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PageController {

	//页面测试
	@RequestMapping("/test")
	public String test(){
		return "page/index";	
	}
	@RequestMapping("/forms")
	public String forms(){
		return "page/forms";	
	}
}
