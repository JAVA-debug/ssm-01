package com.zsy.service;

import com.zsy.domain.Product;

import java.util.List;

public interface IProductService {
    List<Product> limit(Integer start,Integer end);

    List<Product> limit2();

    List<Product> novel(Integer id);

    List<Product> indexCate(Integer id);

    Product good(Integer id);

    Integer updatePro(Product product);

    List<Product> searchProduct(String name);

    List<Product> findAll();

    Integer updateCom(Integer productId);

    Integer proUpdate(Product product);

    Integer proDel(Integer id);

    Integer changeProStatus(Integer id);

    List<Product> selPro(Product product);


}
