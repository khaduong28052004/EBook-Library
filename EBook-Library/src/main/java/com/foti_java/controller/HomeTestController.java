package com.foti_java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.foti_java.repository.AccountRepositoty;

@Controller
public class HomeTestController {
	@Autowired
	AccountRepositoty accountRepositoty;

	@RequestMapping("/testhome")
	@ResponseBody
	public String requestMethodName() {
		accountRepositoty.findAll();
		return "hello Kha";
	}

}
