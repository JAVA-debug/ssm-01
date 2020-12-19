package com.zsy.dao;

import com.zsy.domain.User;

public interface UserDao {
    User findByName(String username);
}
