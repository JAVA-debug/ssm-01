package com.zsy.service;

import com.zsy.domain.Address;

import java.util.List;

public interface IAddressService {
    List<Address> findAll(Integer userId);

    Integer newAddress(Address address);

    Integer updateAddress(Address address);

    Address findById(Integer id);

    Integer delAddress(Integer id);
}
