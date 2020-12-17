package com.zsy.test;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zsy.domain.Account;
import com.zsy.domain.Comment;
import com.zsy.domain.Product;
import com.zsy.service.ICommentService;
import com.zsy.service.IProductService;
import com.zsy.service.impl.CommentServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class) //声明spring提供的单元测试环境
@ContextConfiguration(locations = "classpath:applicationContext.xml")//指定IoC容器的配置信息
public class CommentTest {

    @Autowired
    private ICommentService commentService;

    @Autowired
    private IProductService productService;
    @Test
    public void commentTest(){
        List<Comment> list = commentService.findList(8);
        for (Comment comment : list) {
            System.out.println(comment.getAccount());
            System.out.println(comment.getProduct());
        }
//        System.out.println(list);
    }

    @Test
    public void delComment(){
        commentService.delComment(5);
    }


    @Test
    public void pageHelper(){
        PageHelper.startPage(2,5);
        List<Product> novel = productService.novel(11);
        for (Product product : novel) {
            System.out.println(product);
        }
        PageInfo<Product> info = new PageInfo<Product>(novel);

    }
}
