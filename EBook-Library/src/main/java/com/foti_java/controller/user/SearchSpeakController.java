package com.foti_java.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SearchSpeakController {
@GetMapping("/search")
public String getMethodName() {
	return "client/searchSpeak";
}

}
