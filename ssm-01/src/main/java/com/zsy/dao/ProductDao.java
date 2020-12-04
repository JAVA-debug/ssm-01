package com.zsy.dao;

import com.zsy.domain.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductDao {

//    特别推荐
    List<Product> limit(@Param("start") Integer start,@Param("end") Integer end);

//    最近热卖
    List<Product> limit2();

//    分类
    List<Product> novel(Integer id);

//    详情
    Product good(Integer id);

//    更新销量，库存
    Integer updatePro(Product product);
}
