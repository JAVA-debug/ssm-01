package com.zsy.dao;

import com.zsy.domain.Favorite;

import java.util.List;

public interface FavoriteDao {
//    找到所有喜欢
    List<Favorite> findAll(Integer userId);
}
