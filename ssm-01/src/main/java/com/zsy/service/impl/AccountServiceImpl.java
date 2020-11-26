package com.zsy.service.impl;

import com.zsy.dao.AccountDao;
import com.zsy.domain.Account;
import com.zsy.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountServiceImpl implements IAccountService {

    @Autowired
    private AccountDao accountDao;

    @Override
    public List<Account> allAccount() {
        return accountDao.allAccount();
    }

    @Override
    public Account doLogin(String username, String password) {
        Account account = accountDao.findByName(username);
        if (account == null || !account.getPassword().equals(password)){
            return null;
        }
        return account;
    }

    @Override
    public Integer doReg(Account account) {
        Account acc = accountDao.findByName(account.getUsername());
        if (acc != null){
            return -1;
        }

        account.setStatus(1);
        return accountDao.doReg(account);
    }
}
