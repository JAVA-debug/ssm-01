package com.zsy.vo;

import com.zsy.domain.Account;
import com.zsy.domain.Comment;

import java.io.Serializable;
import java.util.Date;

public class AccountComment extends Comment{
    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return super.toString()+"AccountComment{" +
                "username='" + username + '\'' +
                '}';
    }
}
