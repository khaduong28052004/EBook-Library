package com.foti_java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("account")
public class ChangePassController {
@RequestMapping("changePass")
public String getChangePass() {
    return "layout/account/changPass";
}

}
