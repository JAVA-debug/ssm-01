package com.zsy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopController {

    @RequestMapping("/shop")
    public String shop(){
        return "user/member";
    }

    @RequestMapping("/order")
    public String order(){

        return "user/member";
    }
}
