package com.zsy.service;

import com.zsy.domain.Product;

import java.util.List;

public interface IProductService {
    List<Product> limit(Integer start,Integer end);

    List<Product> limit2();

    List<Product> novel(Integer id);

    Product good(Integer id);
}
