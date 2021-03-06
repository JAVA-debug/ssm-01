package com.zsy.controller;

import com.zsy.domain.Account;
import com.zsy.service.IAccountService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;
import java.util.Random;

@Controller
public class AccountController {

    @Autowired
    private IAccountService accountService;

    //首页
    @RequestMapping("/")
    public String index() {
        return "user/index1";
//        return "redirect:/special";
    }

    @RequestMapping("/checkCode")
    public void checkCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //服务器通知浏览器不要缓存
        response.setHeader("pragma", "no-cache");
        response.setHeader("cache-control", "no-cache");
        response.setHeader("expires", "0");

        //在内存中创建一个长80，宽30的图片，默认黑色背景
        //参数一：长
        //参数二：宽
        //参数三：颜色
        int width = 80;
        int height = 30;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

        //获取画笔
        Graphics g = image.getGraphics();
        //设置画笔颜色为灰色
        g.setColor(Color.GRAY);
        //填充图片
        g.fillRect(0, 0, width, height);

        //产生4个随机验证码，12Ey
        String checkCode = getCheckCode();
        //将验证码放入HttpSession中
        request.getSession().setAttribute("CHECKCODE_SERVER", checkCode);

        //设置画笔颜色为黄色
        g.setColor(Color.YELLOW);
        //设置字体的小大
        g.setFont(new Font("黑体", Font.BOLD, 24));
        //向图片上写入验证码
        g.drawString(checkCode, 15, 25);

        //将内存中的图片输出到浏览器
        //参数一：图片对象
        //参数二：图片的格式，如PNG,JPG,GIF
        //参数三：图片输出到哪里去
        ImageIO.write(image, "PNG", response.getOutputStream());
    }

    private String getCheckCode() {
        String base = "0123456789ABCDEFGabcdefg";
        int size = base.length();
        Random r = new Random();
        StringBuffer sb = new StringBuffer();
        for (int i = 1; i <= 4; i++) {
            //产生0到size-1的随机值
            int index = r.nextInt(size);
            //在base字符串中获取下标为index的字符
            char c = base.charAt(index);
            //将c放入到StringBuffer中去
            sb.append(c);
        }
        return sb.toString();
    }

    @RequestMapping("/login")
    public String login() {
        return "user/login";
    }

    @RequestMapping("/dologin")
    public String dologin(String username, String password, String code, HttpServletRequest request, Model model){
        Account account = accountService.doLogin(username, password);
        String checkcode_server = (String) request.getSession().getAttribute("CHECKCODE_SERVER");
        if (account == null){
            model.addAttribute("error","用户名或密码错误");
            return "user/login";
        }else if (code == null || !checkcode_server.equalsIgnoreCase(code)){
            model.addAttribute("error", "验证码错误");
            return "user/login";
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("account",account);

            return "redirect:/";
        }
    }

    @RequestMapping("/account")
    public String allAccount() {
        List<Account> accounts = accountService.allAccount();
        System.out.println("accounts = " + accounts);
        return "account";
    }

    @RequestMapping("/regist")
    public String regist(){
        return "user/register";
    }

    @RequestMapping("/doReg")
    public String doRegist(Account account,Model model,HttpServletRequest request,String code){
        Integer res = accountService.doReg(account);
        String checkcode_server = (String) request.getSession().getAttribute("CHECKCODE_SERVER");

        if (res == -1){
            model.addAttribute("resInfo","用户名重复");
            return "forward:/regist";
        }else if (code == null || !checkcode_server.equalsIgnoreCase(code)){
            model.addAttribute("resInfo", "验证码错误");
            return "forward:/regist";
        } else
            return "user/login";
    }

    @RequestMapping("/info")
    public String memberInfo(HttpServletRequest request,Model model){
        Account account = (Account) request.getSession().getAttribute("account");
        Integer userId = account.getId();
        Account accountServiceById = accountService.findById(userId);
        model.addAttribute("info",accountServiceById);
        return "user/member_info";
    }

    @RequestMapping("/updateAcc")
    public String updateAcc(HttpServletRequest request){
        Account account1 = (Account) request.getSession().getAttribute("account");
        Integer userId = account1.getId();
        String trueName = request.getParameter("trueName");
        Integer sex = Integer.parseInt(request.getParameter("sex"));
        Integer res = accountService.updateAcc(userId,trueName,sex);
        if (res == 1){
            return "redirect:/info";
        }else
            return "/";
    }

    @RequestMapping("/ToUpdatePwd")
    public String ToUpdatePwd(){
        return "user/password_eidt";
    }

    @RequestMapping("/updatePwd")
    public String updatePwd(String laterPwd,String newPwd,HttpServletRequest request,Model model){
        Account account = (Account) request.getSession().getAttribute("account");
        String password = account.getPassword();
        if (!password .equals(laterPwd)){
            model.addAttribute("error","不是原密码");
            return "forward:/ToUpdatePwd";
        }
        Integer res = accountService.updatePwd(newPwd,account.getId());
        if (res == 1) {
            model.addAttribute("error","修改密码成功");
            return "redirect:/";
        }else {
            return "user/error";
        }
    }



//    @RequestMapping("/updateAcc")
//    public String updateAcc(Account account,HttpServletRequest request){
//        Account account1 = (Account) request.getSession().getAttribute("account");
//        account.setId(account1.getId());
//        Integer res = accountService.updateAcc(account);
//        if (res == 1){
//            return "redirect:/member_info";
//        }else {
//            return "user/index1";
//        }
//    }
}
