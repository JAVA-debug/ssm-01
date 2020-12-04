package com.zsy.service.impl;

import com.zsy.dao.ProductDao;
import com.zsy.domain.Product;
import com.zsy.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements IProductService {

    @Autowired
    private ProductDao productDao;


    @Override
    public List<Product> limit(Integer start, Integer end) {
        return productDao.limit(start,end);
    }

    @Override
    public List<Product> limit2() {
        return productDao.limit2();
    }

    @Override
    public List<Product> novel(Integer id) {
        return productDao.novel(id);
    }

    @Override
    public Product good(Integer id) {
        return productDao.good(id);
    }

    @Override
    public Integer updatePro(Product product) {
        return productDao.updatePro(product);
    }


}
