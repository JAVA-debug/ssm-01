package com.zsy.service;

import com.zsy.domain.Account;
import com.zsy.domain.Address;


import java.util.List;


public interface IAccountService {

    List<Account> allAccount();

    Account findByName(String name);

    Account doLogin(String username,String password);

    Integer doReg(Account account);

    Account findById(Integer userId);

    Integer updateAcc(Integer userId,String trueName,Integer sex);
//    Integer updateAcc(Account account);

    Integer updatePwd(String newPwd,Integer userId);

    Integer accUpdate(Account account);

    Integer delAcc(Integer id);
}
