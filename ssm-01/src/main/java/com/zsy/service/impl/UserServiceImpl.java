package com.zsy.service.impl;

import com.zsy.dao.UserDao;
import com.zsy.domain.Account;
import com.zsy.domain.User;
import com.zsy.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User doLogin(String username, String password) {
        User user = userDao.findByName(username);
        if (user == null || !user.getPassword().equals(password)){
            return null;
        }
        return user;
    }
}
