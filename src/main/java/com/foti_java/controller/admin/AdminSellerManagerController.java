package com.foti_java.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("Ebook/admin")
public class AdminSellerManagerController {
@RequestMapping("sellermanager")
public String requestMethodName() {
    return "html/admin/AdminLTE-3.1.0/views/pages/sellermanager";
    }

}
