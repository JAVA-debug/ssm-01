package com.zsy.controller;

import com.zsy.domain.Product;
import com.zsy.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private IProductService productService;

    @RequestMapping("/special")
    @ResponseBody
    public List<Product> limit(Integer start, Integer end){
        return productService.limit(start,end);
    }


    @RequestMapping("/limit2")
    @ResponseBody
    public List<Product> limit2(Model model) {
        return productService.limit2();
    }

}
