package com.zsy.controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Hellow {


    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }


}
