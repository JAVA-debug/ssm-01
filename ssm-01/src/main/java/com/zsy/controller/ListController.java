package com.zsy.controller;

import com.zsy.domain.Product;
import com.zsy.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ListController {
    @Autowired
    private IProductService productService;

    @RequestMapping("/novel")
    public String HotSell(Integer id, Model model){
        List<Product> novel = productService.novel(id);
        model.addAttribute("books",novel);
        return "user/list";
    }
}
