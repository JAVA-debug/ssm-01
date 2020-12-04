package com.zsy.dao;

import com.zsy.domain.OrderItem;
import com.zsy.domain.Orders;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OrdersDao {
//    找到用户下所有订单
//    @Select("select * from orders where userId = #{userId}")
    List<Orders> findAll(Integer userId);

//    找到每个订单的所有商品
    List<OrderItem> findAllItem(Integer userId);

//    找到每个订单有几个商品
    Integer findOne(Integer orderId);

//    下单
    Integer addOrder(Orders orders);

//    给每个item添加
    Integer addItem(OrderItem orderItem);
}
