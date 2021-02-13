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
    public List<Product> limit2() {
        return productService.limit2();
    }

    @RequestMapping("/indexCate")
    @ResponseBody
    public List<Product> indexCate(Integer productCategoryId){
        return productService.indexCate(productCategoryId);
    }

//    @RequestMapping("/search")
//    @ResponseBody
//    public List<Product> searchProduct(String searchText){
//        List<Product> products = productService.searchProduct(searchText);
//        return products;
//    }
    @RequestMapping("/search")
    public String searchProduct(String searchText,Model model){
        List<Product> products = productService.searchProduct(searchText);
        model.addAttribute("searchContext",products);
        return "user/list";
    }



}
