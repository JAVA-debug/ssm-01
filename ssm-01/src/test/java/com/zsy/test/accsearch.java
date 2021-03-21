package com.zsy.test;

import com.zsy.domain.Account;
import com.zsy.service.IAccountService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring配置文件
@ContextConfiguration("classpath:applicationContext.xml")
public class accsearch {
    @Autowired
    private IAccountService accountService;

    @Test
    public void test(){
        List<Account> y = accountService.accSearch("y");
        System.out.println(y);
    }
}
