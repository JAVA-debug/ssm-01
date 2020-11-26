package com.zsy.controller;

import com.zsy.service.IRoleService;
import com.zsy.domain.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
public class RoleController {

    @Autowired
    private IRoleService roleService;


//    @RequestMapping ("/role")
//    public String find(Integer id, Model model){
//        Role role = roleService.find(id);
//        model.addAttribute("role",role);
//        return "redirect:/hello";
//
//
//    }

    @RequestMapping("/allRole")
    public String findAll(Model model){
        List<Role> roles = roleService.allRole();
        model.addAttribute("roles",roles);
        return "allRole";
    }
}
