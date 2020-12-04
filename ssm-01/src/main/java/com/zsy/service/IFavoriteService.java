package com.zsy.service;

import com.zsy.domain.Favorite;

import java.util.List;

public interface IFavoriteService {
    List<Favorite> findAll(Integer userId);
}
