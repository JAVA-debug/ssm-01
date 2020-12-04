package com.zsy.controller;

import com.zsy.domain.Account;
import com.zsy.domain.Favorite;
import com.zsy.domain.OrderItem;
import com.zsy.domain.Orders;
import com.zsy.service.impl.FavoriteServiceImpl;
import com.zsy.service.impl.OrdersServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class OrdersController {
    @Autowired
    private OrdersServiceImpl ordersService;

    @Autowired
    private FavoriteServiceImpl favoriteService;

    @RequestMapping("/order")
    public String order(Integer userId, Model model){

        List<Orders> orders = ordersService.findAll(userId);
        model.addAttribute("order",orders);

        List<OrderItem> allItem = ordersService.findAllItem(userId);
        System.out.println(allItem);
        model.addAttribute("item",allItem);


        for (OrderItem orderItem : allItem) {
            Integer orderId = orderItem.getOrderId();
            Integer one = ordersService.findOne(orderId);
//            System.out.println(one);
            model.addAttribute("one",one);
        }

        return "user/member";
    }

    @RequestMapping("/favorite")
    public String favorite(Model model, HttpServletRequest request){
        Account account = (Account) request.getSession().getAttribute("account");
        Integer userId = account.getId();
        List<Favorite> allFav = favoriteService.findAll(userId);
        model.addAttribute("fav",allFav);
        return "user/favorite";
    }
}
