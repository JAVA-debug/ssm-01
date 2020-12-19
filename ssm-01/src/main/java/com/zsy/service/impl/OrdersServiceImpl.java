package com.zsy.service.impl;

import com.zsy.dao.OrdersDao;
import com.zsy.domain.OrderItem;
import com.zsy.domain.Orders;
import com.zsy.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements IOrdersService {
    @Autowired
    private OrdersDao ordersDao;

    @Override
    public List<Orders> findAll(Integer userId) {
        return ordersDao.findAll(userId);
    }

    @Override
    public List<OrderItem> findAllItem(Integer userId) {
        return ordersDao.findAllItem(userId);
    }

    @Override
    public Integer findOne(Integer orderId) {
        return ordersDao.findOne(orderId);
    }

    @Override
    public Integer addOrder(Orders orders) {
        if (ordersDao.addOrder(orders)<=0){
            return 0;
        }
        for (OrderItem orderItem:orders.getOrderItems()){
            orderItem.setOrderId(orders.getId());
            ordersDao.addItem(orderItem);
        }
        return 1;
    }

    @Override
    public List<OrderItem> findById(Integer orderId) {
        return ordersDao.findById(orderId);
    }

    @Override
    public Integer finishOrder(Integer orderId) {
        return ordersDao.finishOrder(orderId);
    }

    @Override
    public List<Orders> orderAll() {
        return ordersDao.orderAll();
    }

    @Override
    public Integer sendOrder(Integer orderId) {
        return ordersDao.sendOrder(orderId);
    }

    @Override
    public Integer delOrder(Integer orderId) {
        Integer integer = ordersDao.delOrderItem(orderId);
        System.out.println(integer);
        if (integer == -1) {
            return -1;
        }
        return ordersDao.delOrder(orderId);
    }
}
