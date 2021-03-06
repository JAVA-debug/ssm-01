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

//    首页小分类
    List<Product> indexCate(Integer id);
//    详情
    Product good(Integer id);

//    更新销量，库存
    Integer updatePro(Product product);

//    搜索商品
    List<Product> searchProduct(String name);

    List<Product> findAll();

//    评论+1
    Integer updateCom(Integer productId);

//    管理员更新商品
    Integer proUpdate(Product product);

//    管理员删除商品
    Integer proDel(Integer id);

//    管理员设置上下架
    Integer proUp(Integer id);
    Integer proDown(Integer id);

    //管理员查找商品
    List<Product> selPro(@Param("pro") Product product);
}
