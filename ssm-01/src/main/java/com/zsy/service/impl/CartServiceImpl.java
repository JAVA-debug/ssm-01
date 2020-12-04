package com.zsy.service.impl;

import com.zsy.dao.CartDao;
import com.zsy.domain.Cart;
import com.zsy.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements ICartService {

    @Autowired
    private CartDao cartDao;

    @Override
    public List<Cart> findAll() {
        return cartDao.findAll();
    }

    @Override
    public Cart ifExist(Integer userId, Integer productId) {
        return cartDao.ifExist(userId,productId);
    }

    @Override
    public Integer add(Cart cart) {
        return cartDao.add(cart);
    }

    @Override
    public Integer total(Integer userId) {
        return cartDao.total(userId);
    }

    @Override
    public List<Cart> accountCart(Integer userId) {
        return cartDao.accountCart(userId);
    }

    @Override
    public Integer updateCart(Cart cart) {
        return cartDao.updateCart(cart);
    }

    @Override
    public Cart findById(Integer id) {
        return cartDao.findById(id);
    }

    @Override
    public Integer delCart(Integer userId) {
        return cartDao.delCart(userId);
    }


}
