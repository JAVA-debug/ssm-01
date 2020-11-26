package com.zsy.dao;


import com.zsy.domain.Role;

import java.util.List;

public interface RoleDao {
    Role find(Integer id);

    List<Role> allRole();
}
