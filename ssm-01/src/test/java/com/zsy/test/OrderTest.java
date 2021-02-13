package com.zsy.test;

import com.zsy.domain.OrderItem;
import com.zsy.domain.Orders;
import com.zsy.domain.Product;
import com.zsy.service.IOrdersService;
import com.zsy.service.IProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class) //声明spring提供的单元测试环境
@ContextConfiguration(locations = "classpath:applicationContext.xml")//指定IoC容器的配置信息
public class OrderTest {
    @Autowired
    private IOrdersService ordersService;

    @Autowired
    private IProductService productService;

    @Test
    public void test(){
        List<OrderItem> item = ordersService.item("O1612869555825");
        System.out.println(item);

    }
    @Test
    public void test1(){
        Product product = new Product();
        product.setName("黑");
//        product.setStatus(1);
        List<Product> products = productService.selPro(product);
        System.out.println(products);
    }

    @Test
    public void test2(){
        Orders orders = new Orders();
        orders.setSn("O1612872917823");
        List<Orders> orders1 = ordersService.selIOrder(orders);
        System.out.println(orders1);
    }
}
