package com.zsy.controller;

import com.alibaba.fastjson.JSONObject;
import com.zsy.domain.*;
import com.zsy.service.impl.AddressServiceImpl;
import com.zsy.service.impl.CartServiceImpl;
import com.zsy.service.impl.OrdersServiceImpl;
import com.zsy.service.impl.ProductServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;


@Controller
public class CartController {

    @Autowired
    private CartServiceImpl cartService;
    @Autowired
    private ProductServiceImpl productService;
    @Autowired
    private AddressServiceImpl addressService;
    @Autowired
    private OrdersServiceImpl ordersService;

    @RequestMapping("/add")
    @ResponseBody
    public String addCart(Cart cart, HttpServletRequest request) {

        Account account = (Account) request.getSession().getAttribute("account");
        Integer productId = (Integer.parseInt(request.getParameter("productId")));

        Cart ifExist = cartService.ifExist(account.getId(), productId);
        if (ifExist != null) {
            return getJSONString(1, "购物车已存在");
        }
        Product good = productService.good(cart.getProductId());

        cart.setUserId(account.getId());
        cart.setName(good.getName());
        cart.setImageUrl(good.getImageUrl());
        cart.setPrice(good.getPrice());
        String num = request.getParameter("num");
        cart.setNum(Integer.parseInt(num));
        float total = good.getPrice() * Integer.parseInt(num);
        cart.setMoney((double) total);

        Integer add = cartService.add(cart);
        if (add == 1) {
            return getJSONString(3, "添加购物车成功");
        }
        return getJSONString(2, "未知错误");
    }
//    @RequestParam("productId") Integer productId,
    @RequestMapping("/addFav")
    @ResponseBody
    public String addFav(@RequestParam("productId") Integer productId,HttpServletRequest request){

        Account account = (Account) request.getSession().getAttribute("account");
        Product good = productService.good(productId);

        Favorite favorite = new Favorite();
        favorite.setUserId(account.getId());
        favorite.setProductId(productId);
        favorite.setName(good.getName());
        favorite.setImageUrl(good.getImageUrl());
        favorite.setPrice(good.getPrice());
        favorite.setCreateTime(new Date());


        Integer res = cartService.findOneFav(productId, account.getId());
        if (res != null && res > 0){
            return getJSONString(9,"已经添加过了");
        }

        cartService.addFav(favorite);

        return getJSONString(10,"收藏成功");
    }

    @RequestMapping("/total")
    @ResponseBody
    public String total(HttpServletRequest request){
        Account account = (Account) request.getSession().getAttribute("account");
        String total = cartService.total(account.getId()).toString();
        if (total.equals("0")){
            return getJSONString(4,"还没有商品，赶快去挑选！");
        }
        return getJSONString(5,total);
    }

    @RequestMapping("/toCart")
    public String toCart(HttpServletRequest request, Model model){
        Account account = (Account) request.getSession().getAttribute("account");
        List<Cart> carts = cartService.accountCart(account.getId());
        model.addAttribute("accountCart",carts);
        return "user/flow";
    }

    @RequestMapping("/update_num")
    @ResponseBody
    public String updateCart(Integer cartId,Integer num){
        Cart cart = cartService.findById(cartId);
        cart.setNum(num);
        float total = cart.getPrice() * num;
        cart.setMoney((double) total);
        Integer integer = cartService.updateCart(cart);
        if (integer == 1){
            return getJSONString(6,"修改成功");
        }
        return "user/error";
    }

    @RequestMapping("/flow2")
    public String flow2(HttpServletRequest request,Model model){
        Account account = (Account) request.getSession().getAttribute("account");
        List<Address> add = addressService.findAll(account.getId());
        model.addAttribute("address",add);

        List<Cart> carts = cartService.accountCart(account.getId());
        model.addAttribute("accountCart",carts);
        return "user/flow2";
    }

    @RequestMapping("/flow3")
    @ResponseBody
    public String flow3(HttpServletRequest request,Integer addressId,Model model){
        Account account = (Account) request.getSession().getAttribute("account");
        List<Cart> carts = cartService.accountCart(account.getId());
        Address address = addressService.findById(addressId);

        Orders orders = new Orders();
        double totalMoney = 0;
        int totalNum = 0;
        for (Cart cart : carts) {
            OrderItem orderItem = new OrderItem();
            orderItem.setImageUrl(cart.getImageUrl());
            orderItem.setMoney(cart.getMoney());
            orderItem.setName(cart.getName());
            orderItem.setNum(cart.getNum());
            orderItem.setPrice(cart.getPrice());
            orderItem.setProductId(cart.getProductId());
            totalMoney += cart.getMoney();
            totalNum += cart.getNum();
            orders.getOrderItems().add(orderItem);
        }

        orders.setSn("O"+System.currentTimeMillis());
        orders.setUserId(account.getId());
        orders.setAddress(address.getAddress() + " " + address.getName() + "(收)" + address.getPhone());
        orders.setMoney(totalMoney);
        orders.setProductNum(totalNum);
        orders.setStatus(0);

        Integer res = ordersService.addOrder(orders);
        if (res <= 0){
            return getJSONString(7,"错误");
        }
//        更新库存 销量
        for (Cart cart : carts) {
            Product good = productService.good(cart.getProductId());
            good.setStock(good.getStock() - cart.getNum());
            good.setSellNum(good.getSellNum() + cart.getNum());
            productService.updatePro(good);
        }
//        清空购物车
        cartService.delCart(account.getId());


//        model.addAttribute("orderId",orders.getId());

        return getJSONString(8,orders.getId()+"");
//        return getJSONString(8,"下单成功");
    }

    @RequestMapping("/success")
    public String success(Integer orderId,Model model){
        Integer order = ordersService.findOne(orderId);
        model.addAttribute("order",order);
        return "user/flow3";
    }

    @RequestMapping("/delCartItem")
    @ResponseBody
    public String delCartItem(@RequestParam("cartId") Integer id,HttpServletRequest request){
        Account account = (Account) request.getSession().getAttribute("account");
        cartService.delCartItem(id);
        return getJSONString(11,"删除成功");
    }


    public static String getJSONString(int code, String msg) {
        JSONObject json = new JSONObject();
        json.put("code", code);
        json.put("msg", msg);
        return json.toJSONString();
    }

}
