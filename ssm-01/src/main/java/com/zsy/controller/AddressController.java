package com.zsy.controller;

import com.zsy.domain.Account;
import com.zsy.domain.Address;
import com.zsy.service.impl.AddressServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class AddressController {
    @Autowired
    private AddressServiceImpl addressService;

    @RequestMapping("/address")
    public String find(HttpServletRequest request,Model model){
        Account account = (Account) request.getSession().getAttribute("account");
        List<Address> add = addressService.findAll(account.getId());
        model.addAttribute("address",add);
        return "user/address";
    }

    @PostMapping("/newAddress")
    public String newAddress(Address address,HttpServletRequest request){
        Account account = (Account) request.getSession().getAttribute("account");
        address.setUserId(account.getId());
        Integer integer = addressService.newAddress(address);
        if (integer == 1){
            return "redirect:/address";
        }
        return "user/error";
    }

    @RequestMapping("/toUpdate")
    public String findById(Integer id,Model model){
        Address byId = addressService.findById(id);
        model.addAttribute("byId",byId);
        return "user/address_edit";
    }

    @RequestMapping("/updateAddress")
    public String updateAddress(Address address){
        Integer integer = addressService.updateAddress(address);
        if (integer == 1){
            return "redirect:/address";
        }
        return "user/error";
    }

    @RequestMapping("/delAddress")
    public String delAddress(Integer id){
        addressService.delAddress(id);
        return "redirect:/address";
    }
}
