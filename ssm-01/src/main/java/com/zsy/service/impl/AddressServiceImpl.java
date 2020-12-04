package com.zsy.service.impl;

import com.zsy.dao.AddressDao;
import com.zsy.domain.Address;
import com.zsy.service.IAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements IAddressService {

    @Autowired
    private AddressDao addressDao;

    @Override
    public List<Address> findAll(Integer userId) {
        return addressDao.findAll(userId);
    }

    @Override
    public Integer newAddress(Address address) {
        return addressDao.newAddress(address);
    }

    @Override
    public Integer updateAddress(Address address) {
        return addressDao.updateAddress(address);
    }

    @Override
    public Address findById(Integer id) {
        return addressDao.findById(id);
    }

    @Override
    public Integer delAddress(Integer id) {
        return addressDao.delAddress(id);
    }
}
