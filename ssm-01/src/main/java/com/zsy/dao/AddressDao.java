package com.zsy.dao;

import com.zsy.domain.Address;

import java.util.List;

public interface AddressDao {
    //找到所有地址
    List<Address> findAll(Integer userId);

//    加入新地址
    Integer newAddress(Address address);

//    更新地址
    Integer updateAddress(Address address);

//    找到一个地址
    Address findById(Integer id);

//    删除地址
    Integer delAddress(Integer id);
}
