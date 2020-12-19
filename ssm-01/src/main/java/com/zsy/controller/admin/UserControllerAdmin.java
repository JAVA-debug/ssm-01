package com.zsy.controller.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zsy.domain.Account;
import com.zsy.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@RequestMapping("/admin/account")
@Controller
public class UserControllerAdmin {
    @Autowired
    private IAccountService accountService;

    @RequestMapping("/allAcc")
    public String findAll(Model model,@RequestParam(defaultValue = "1")Integer pageNum){
        PageHelper.startPage(pageNum,10);
        List<Account> accounts = accountService.allAccount();
        PageInfo<Account> info = new PageInfo<>(accounts);
        model.addAttribute("info",info);
        model.addAttribute("acc",accounts);
        return "admin/AccountList";
    }

    @RequestMapping("/accInfo")
    public String accInfo(Integer id,Model model){
        Account account = accountService.findById(id);
        model.addAttribute("accInfo",account);
        return "admin/AccountView";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(Integer id,Model model){
        Account account = accountService.findById(id);
        model.addAttribute("accInfo",account);
        return "admin/AccountUpdate";
    }

    @RequestMapping("/accUpdate")
    public String accUpdate(Account account){
        Integer res = accountService.accUpdate(account);
        if (res == -1){
            return null;
        }
        return "redirect:/admin/account/allAcc";
    }

    @RequestMapping("/delAcc")
    public String delAcc(Integer id){
        Integer integer = accountService.delAcc(id);
        if (integer == -1){
            return null;
        }
        return "redirect:/admin/account/allAcc";
    }
}
