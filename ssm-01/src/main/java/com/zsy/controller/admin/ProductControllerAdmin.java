package com.zsy.controller.admin;

import com.zsy.domain.Product;
import com.zsy.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/admin/product")
@Controller
public class ProductControllerAdmin {
    @Autowired
    private IProductService productService;

    @RequestMapping("/proAll")
    public String proAll(Model model){
        List<Product> all = productService.findAll();
        model.addAttribute("proAll",all);
        return "admin/ProductList";
    }

    @RequestMapping("/selPro")
    public String selPro(Product product,Model model){
        List<Product> products = productService.selPro(product);
        model.addAttribute("selPro",products);
        return "admin/ProductList";
    }

    @RequestMapping("/proInfo")
    public String proInfo(Integer id,Model model){
        Product good = productService.good(id);
        model.addAttribute("proInfo",good);
        return "admin/ProductView";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(Integer id,Model model){
        Product good = productService.good(id);
        model.addAttribute("proInfo",good);
        return "admin/ProductUpdate";
    }

    @RequestMapping("/proUpdate")
    public String proUpdate(Product product){
        Integer integer = productService.proUpdate(product);
        if (integer == -1) {
            return null;
        }
        return "redirect:/admin/product/proAll";
    }

    @RequestMapping("/proDel")
    public String proDel(Integer id){
        Integer integer = productService.proDel(id);
        if (integer == -1){
            return null;
        }
        return "redirect:/admin/product/proAll";
    }

    @RequestMapping("/changeStatus")
    public String changeProStatus(Integer id){
        Integer integer = productService.changeProStatus(id);
        if (integer == -1){
            return null;
        }
        return "redirect:/admin/product/proAll";
    }


}
