package com.zsy.interceptor;

import com.zsy.domain.Account;
import com.zsy.domain.User;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;

public class PremissInterceprot implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        AntPathMatcher antPathMatcher = new AntPathMatcher();
//        String requestURI = request.getRequestURI();
//        if ("/".equals(requestURI) || "/indexCate".equals(requestURI) || "/special".equals(requestURI) || "/limit2".equals(requestURI) || "/login".equals(requestURI) || "/regist".equals(requestURI) || "/checkCode".equals(requestURI) || "/dologin".equals(requestURI) || "/doReg".equals(requestURI) || "admin/login".equals(requestURI) || "admin/dologin".equals(requestURI)){
//            return true;
//        }
//        HttpSession session = request.getSession(true);
//        Account account = (Account) session.getAttribute("account");
//        User user = (User) session.getAttribute("user");
//        if (antPathMatcher.match("/admin/**",requestURI)){
//            if (account != null && account.getStatus() == 2){
//                return true;
//            }
//        }else {
//            if (account != null){
//                return true;
//            }
//        }
//        response.sendRedirect("/login");
//        return false;
        AntPathMatcher antPathMatcher = new AntPathMatcher();
        String requestURI = request.getRequestURI();
        List<String> list = Arrays.asList("/", "/indexCate", "/special", "/limit2","/login","/regist","/checkCode","/dologin","/doReg","/admin/login","/admin/dologin");
        for (String s : list) {
            if (requestURI.equals(s)){
                return true;
            }
        }
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        User user = (User) session.getAttribute("user");
        if (antPathMatcher.match("/admin/**",requestURI)){
            if (user != null){
                return true;//管理员
            }else {
                response.sendRedirect("/admin/login");
                return false;
            }
        }else if (account != null){
            return true;
        }
        response.sendRedirect("/login");
        return false;
    }
}
