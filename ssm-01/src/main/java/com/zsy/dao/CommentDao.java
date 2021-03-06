package com.zsy.dao;

import com.zsy.domain.Comment;
import com.zsy.vo.AccountComment;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommentDao {
    @Select("select * from comment")
    List<Comment> findAll();

    //    @Select("SELECT * from account WHERE id = (SELECT userId from comment WHERE productId = #{bookid})")
    List<AccountComment> OneComment(@Param("bookid") Integer id);

    List<Comment> userComment(@Param("userId") Integer userId, @Param("productId") Integer productId);

    List<Comment> findList(Integer userId);

    Integer delComment(Integer id);

    Integer addComment(Comment comment);

//    管理员查看所有评论
    List<Comment> commentAll();

}
