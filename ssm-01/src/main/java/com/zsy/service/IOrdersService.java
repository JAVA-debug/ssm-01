package com.zsy.service;

import com.zsy.domain.OrderItem;
import com.zsy.domain.Orders;

import java.util.List;

public interface IOrdersService {
    List<Orders> findAll(Integer userId);

    List<OrderItem> findAllItem(Integer userId);

    Integer findOne(Integer orderId);

    Integer addOrder(Orders orders);

    List<OrderItem> findById(Integer orderId);

    Integer finishOrder(Integer orderId);
}
