package com.zsy.service.impl;

import com.zsy.service.IRoleService;
import com.zsy.dao.RoleDao;
import com.zsy.domain.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleImpl implements IRoleService {

    @Autowired
    private RoleDao roleDao;

    @Override
    public Role find(Integer id) {
        return roleDao.find(id);
    }

    @Override
    public List<Role> allRole() {

        return roleDao.allRole();
    }
}
