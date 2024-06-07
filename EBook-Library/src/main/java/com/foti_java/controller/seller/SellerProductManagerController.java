package com.foti_java.controller.seller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("Ebook/seller")
public class SellerProductManagerController {
@RequestMapping("/productmanager")
public String productManafer() {
    return "seller/pages/productmanager";
}

}
