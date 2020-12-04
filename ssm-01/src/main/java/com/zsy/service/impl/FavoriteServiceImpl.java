package com.zsy.service.impl;

import com.zsy.dao.FavoriteDao;
import com.zsy.domain.Favorite;
import com.zsy.service.IFavoriteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FavoriteServiceImpl implements IFavoriteService {
    @Autowired
    private FavoriteDao favoriteDao;

    @Override
    public List<Favorite> findAll(Integer userId) {
        return favoriteDao.findAll(userId);
    }
}
