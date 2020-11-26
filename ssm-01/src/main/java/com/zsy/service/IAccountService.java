package com.zsy.service;

import com.zsy.domain.Account;


import java.util.List;


public interface IAccountService {

    List<Account> allAccount();

    Account doLogin(String username,String password);

    Integer doReg(Account account);
}
