package com.zsy.dao;

import com.zsy.domain.Account;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AccountDao {
    List<Account> allAccount();

    Account findByName(String username);

    Integer doReg(Account account);

//    个人资料
    Account findById(Integer userId);

//    更新用户
    Integer updateAcc(@Param("userId") Integer userId,@Param("trueName") String trueName,@Param("sex") Integer sex);
//    Integer updateAcc(@Param("account") Account account);


//    修改密码
    Integer updatePwd(@Param("newPwd") String newPwd,@Param("userId") Integer userId);

//    管理员修改用户信息
    Integer accUpdate(Account account);

    List<Account> accSearch(String username);

}
