package com.zsy.controller.admin;

import com.zsy.domain.Account;
import com.zsy.domain.Orders;
import com.zsy.service.IAccountService;
import com.zsy.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RequestMapping("/admin/order")
@Controller
public class OrderControllerAdmin {

    @Autowired
    private IOrdersService ordersService;

    @Autowired
    private IAccountService accountService;

    @RequestMapping("/orderAll")
    public String orderAll(Model model) {
        List<Orders> orders = ordersService.orderAll();
        model.addAttribute("orderAll", orders);
        return "admin/OrderList";
    }

    @RequestMapping("/sendOrder")
    public String sendOrder(Integer id) {
        Integer integer = ordersService.sendOrder(id);
        if (integer == -1) {
            return null;
        }
        return "redirect:/admin/order/orderAll";
    }

    //移除
    @RequestMapping("/delOrder")
    public String delOrder(Integer id) {
        Integer integer = ordersService.delOrder(id);
        if (integer == -1) {
            return null;
        }
        return "redirect:/admin/order/orderAll";
    }

    @RequestMapping("/selOrder")
    public String selOrder(Orders orders, Model model, String username) {
        Account byName = accountService.findByName(username);
        if (byName != null){
            orders.setUserId(byName.getId());
        }
        List<Orders> ordersList = ordersService.selIOrder(orders);
        if (orders.getSn() != null) {
            for (Orders orders1 : ordersList) {
                Account byId = accountService.findById(orders1.getUserId());
                orders1.setAccount(byId);
            }
        }
        model.addAttribute("selOrder", ordersList);
        return "admin/OrderList";
    }
}
