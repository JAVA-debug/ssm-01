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

//    每个订单的详细item
    List<OrderItem> findById(Integer orderId);

//    完成收货
    Integer finishOrder(Integer orderId);

//    管理员查看所有订单
    List<Orders> orderAll();

//    管理员更新订单为已发货
    Integer sendOrder(Integer orderId);

//    管理员删除订单
    Integer delOrder(Integer orderId);

//    要先删除order_item的数据之后才能删除order
    Integer delOrderItem(Integer orderId);
}
