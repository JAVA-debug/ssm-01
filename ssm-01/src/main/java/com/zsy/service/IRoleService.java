package com.zsy.service;

import com.zsy.domain.Role;

import java.util.List;

public interface IRoleService {

    Role find(Integer id);

    List<Role> allRole();
}
