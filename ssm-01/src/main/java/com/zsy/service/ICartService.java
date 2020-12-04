package com.zsy.service;

import com.zsy.domain.Cart;


import java.util.List;

public interface ICartService {
    List<Cart> findAll();

    Cart ifExist(Integer userId,Integer productId);

    Integer add(Cart cart);

    Integer total(Integer userId);

    List<Cart> accountCart(Integer userId);

    Integer updateCart(Cart cart);

    Cart findById(Integer id);

    Integer delCart(Integer userId);
}
