package com.zsy.service;

import com.zsy.domain.User;

public interface IUserService {
    User doLogin(String username, String password);
}
