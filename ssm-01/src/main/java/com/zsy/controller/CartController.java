package com.zsy.controller;

import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradeQueryResponse;
import com.zsy.domain.*;
import com.zsy.service.IAddressService;
import com.zsy.service.ICartService;
import com.zsy.service.IOrdersService;
import com.zsy.service.IProductService;
import com.zsy.service.impl.AddressServiceImpl;
import com.zsy.service.impl.CartServiceImpl;
import com.zsy.service.impl.OrdersServiceImpl;
import com.zsy.service.impl.ProductServiceImpl;
import com.zsy.utils.AlipayConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import static com.zsy.utils.getJSONString.getJSONString;


@Controller
public class CartController {

    @Autowired
    private ICartService cartService;
    @Autowired
    private IProductService productService;
    @Autowired
    private IAddressService addressService;
    @Autowired
    private IOrdersService ordersService;

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
    public String flow3(HttpServletRequest request, Integer addressId){
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

        //订单号
        orders.setSn("O"+System.currentTimeMillis());

        orders.setUserId(account.getId());
        orders.setAddress(address.getAddress() + " " + address.getName() + "(收)" + address.getPhone());
        orders.setMoney(totalMoney);
        orders.setProductNum(totalNum);
        orders.setStatus(3);

        Integer res = ordersService.addOrder(orders);
        if (res <= 0){
            return getJSONString(7,"错误");
        }

//        更新库存 销量
//        for (Cart cart : carts) {
//            Product good = productService.good(cart.getProductId());
//            good.setStock(good.getStock() - cart.getNum());
//            good.setSellNum(good.getSellNum() + cart.getNum());
//            productService.updatePro(good);
//        }

//        清空购物车
        cartService.delCart(account.getId());

        return getJSONString(8,orders.getId()+"");

    }

    @RequestMapping("/showPay")
    public void showPay(HttpServletResponse response,Integer orderId) throws Exception {
        Orders orders = ordersService.oneOrder(orderId);
        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
//        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

        //商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = new String(orders.getSn().getBytes("ISO-8859-1"), "UTF-8");
        //付款金额，必填
//        String total_amount = new String(request.getParameter("WIDtotal_amount").getBytes("ISO-8859-1"), "UTF-8");
        double total_amount = orders.getMoney();
        //订单名称，必填
        String subject = new String("图书".getBytes("ISO-8859-1"), "UTF-8");
        //商品描述，可空
//        String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"), "UTF-8");

        alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no + "\","
                + "\"total_amount\":\"" + total_amount + "\","
                + "\"subject\":\"" + subject + "\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");


        //请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节

        //构建支付宝官方支付页面
        String top = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n" +
                "<html>\n" +
                "<head>\n" +
                "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\n" +
                "<title>付款</title>\n" +
                "</head>";
        String result = alipayClient.pageExecute(alipayRequest).getBody();
        String bottom = "<body>\n" +
                "</body>\n" +
                "</html>";
        //输出
        response.getWriter().println(top + result + bottom);
    }

    @RequestMapping("/return")
    public void returnUrl(HttpServletRequest request, HttpServletResponse response) throws Exception {
        PrintWriter out = response.getWriter();
        //获取支付宝GET过来反馈信息
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext(); ) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用
            valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }

        boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

        //——请在这里编写您的程序（以下代码仅作参考）——
        if (signVerified) {
            System.out.println("同步验证成功");

            //商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");
            ordersService.orderStatus(0,out_trade_no);
            //更新库存，销量
            List<OrderItem> item = ordersService.item(out_trade_no);
            for (OrderItem orderItem : item) {
                Product good = productService.good(orderItem.getProductId());
                good.setStock(good.getStock()-orderItem.getNum());
                good.setSellNum(good.getSellNum()+orderItem.getNum());
                productService.updatePro(good);

            }
            response.sendRedirect(request.getContextPath()+"/");
            //支付宝交易号
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");

            //付款金额
            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"), "UTF-8");

            out.println("trade_no:" + trade_no + "<br/>out_trade_no:" + out_trade_no + "<br/>total_amount:" + total_amount);
        } else {
            out.println("验签失败");
        }
        //——请在这里编写您的程序（以上代码仅作参考）——
//        return "";
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


//    public static String getJSONString(int code, String msg) {
//        JSONObject json = new JSONObject();
//        json.put("code", code);
//        json.put("msg", msg);
//        return json.toJSONString();
//    }

}
