package com.zsy.test;

import com.zsy.domain.Account;
import com.zsy.domain.Orders;
import com.zsy.domain.User;
import com.zsy.service.IAccountService;
import com.zsy.service.IOrdersService;
import com.zsy.service.IUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class) //声明spring提供的单元测试环境
@ContextConfiguration(locations = "classpath:applicationContext.xml")//指定IoC容器的配置信息
public class adminTest {
    @Autowired
    private IUserService userService;
    @Autowired
    private IAccountService accountService;
    @Autowired
    private IOrdersService ordersService;

    @Test
    public void TEST(){
        User user = userService.doLogin("admin", "123");
        System.out.println(user);
    }

    @Test
    public void test(){
        List<Account> accounts = accountService.allAccount();
        System.out.println(accounts);
    }

    @Test
    public void accUpdate(){
        Account acc = accountService.findById(8);
        acc.setEmail("1111@11");
        accountService.accUpdate(acc);
    }

    @Test
    public void orderAll(){
        List<Orders> orders = ordersService.orderAll();
        for (Orders order : orders) {
            System.out.println(order.getAccount());
        }
//        System.out.println(orders);


    }
}
