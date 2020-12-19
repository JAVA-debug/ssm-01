package com.zsy.controller.admin;

import com.zsy.domain.Orders;
import com.zsy.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/admin/order")
@Controller
public class OrderControllerAdmin {

    @Autowired
    private IOrdersService ordersService;

    @RequestMapping("/orderAll")
    public String orderAll(Model model){
        List<Orders> orders = ordersService.orderAll();
        model.addAttribute("orderAll",orders);
        return "admin/OrderList";
    }

    @RequestMapping("/sendOrder")
    public String sendOrder(Integer id){
        Integer integer = ordersService.sendOrder(id);
        if (integer == -1){
            return null;
        }
        return "redirect:/admin/order/orderAll";
    }

    @RequestMapping("/delOrder")
    public String delOrder(Integer id){
        Integer integer = ordersService.delOrder(id);
        if (integer == -1){
            return null;
        }
        return "redirect:/admin/order/orderAll";
    }
}
