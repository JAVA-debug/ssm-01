package com.zsy.dao;

import com.zsy.domain.Account;

import java.util.List;

public interface AccountDao {
    List<Account> allAccount();

    Account findByName(String username);

    Integer doReg(Account account);

    List<Account> findById(Integer id);
}
