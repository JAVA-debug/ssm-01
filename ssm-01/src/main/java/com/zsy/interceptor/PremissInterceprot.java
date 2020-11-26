package com.zsy.interceptor;

import com.zsy.domain.Account;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PremissInterceprot implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        AntPathMatcher antPathMatcher = new AntPathMatcher();
        String requestURI = request.getRequestURI();
        if ("/".equals(requestURI) || "/special".equals(requestURI) || "/limit2".equals(requestURI) || "/login".equals(requestURI) || "/regist".equals(requestURI) || "/checkCode".equals(requestURI) || "/dologin".equals(requestURI) || "/doReg".equals(requestURI)){
            return true;
        }
        HttpSession session = request.getSession(true);
        Account account = (Account) session.getAttribute("account");
        if (antPathMatcher.match("/admin/**",requestURI)){
            if (account != null && account.getStatus() == 2){
                return true;
            }
        }else {
            if (account != null){

                return true;
            }
        }
        response.sendRedirect("/login");
        return false;
    }
}
