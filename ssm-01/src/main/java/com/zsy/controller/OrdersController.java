package com.zsy.controller;

import com.alibaba.fastjson.JSONObject;
import com.zsy.domain.Account;
import com.zsy.domain.Favorite;
import com.zsy.domain.OrderItem;
import com.zsy.domain.Orders;
import com.zsy.service.IFavoriteService;
import com.zsy.service.IOrdersService;
import com.zsy.service.impl.FavoriteServiceImpl;
import com.zsy.service.impl.OrdersServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

import static com.zsy.utils.getJSONString.getJSONString;

@Controller
public class OrdersController {
    @Autowired
    private IOrdersService ordersService;

    @Autowired
    private IFavoriteService favoriteService;
/*
    0：待发货(已支付
    1：已发货
    2：已完成
    3:未支付

 */


    @RequestMapping("/order")
    public String order(Integer userId, Model model){

        List<Orders> orders = ordersService.findAll(userId);

        for (Orders order : orders) {
            order.setOrderItems(ordersService.findById(order.getId()));
        }

        model.addAttribute("order",orders);

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

    @RequestMapping("/finish_order")
    @ResponseBody
    public String finishOrder(Integer id){
        Integer integer = ordersService.finishOrder(id);
        if (integer == 1){
            return getJSONString(1,"收货成功");
        }
        return getJSONString(2,"error");
    }



//    public static String getJSONString(int code, String msg) {
//        JSONObject json = new JSONObject();
//        json.put("code", code);
//        json.put("msg", msg);
//        return json.toJSONString();
//    }


}
