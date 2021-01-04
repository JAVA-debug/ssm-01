package com.zsy.controller.admin;

import com.zsy.domain.User;
import com.zsy.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RequestMapping("/admin")
@Controller
public class AdminController {

    @Autowired
    private IUserService userService;

    @RequestMapping(value = {"/",""})
    public String index(){
        return "admin/index";
    }

    @RequestMapping("/login")
    public String login() {
        return "admin/login";
    }

    @RequestMapping("/dologin")
    public String dologin(String username, String password, HttpServletRequest request, Model model){
        User user = userService.doLogin(username, password);
        if (user == null){
            model.addAttribute("error","用户名或密码错误");
            return "admin/login";
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
            return "redirect:/admin/";
        }
    }
}
