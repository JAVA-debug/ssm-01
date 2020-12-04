package com.zsy.dao;

import com.zsy.domain.Cart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartDao {
    List<Cart> findAll();

//    购物车是否有货
    Cart ifExist(@Param("userId") Integer userId, @Param("productId") Integer productId);

//    加入购物车
    Integer add(Cart cart);

//    获取购物车里商品个数
    Integer total(Integer userId);

//    显示用户所有购物车
    List<Cart> accountCart(Integer userId);

//    更新购物车
    Integer updateCart(Cart cart);

//    根据cartId找
    Cart findById(Integer id);

//    清空购物车
    Integer delCart(Integer userId);

}
