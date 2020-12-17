package com.zsy.controller;

import com.zsy.domain.Comment;
import com.zsy.domain.Product;
import com.zsy.service.ICommentService;
import com.zsy.service.IProductService;
import com.zsy.vo.AccountComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class GoodDetailController {
    @Autowired
    private IProductService productService;
    @Autowired
    private ICommentService commentService;

    @RequestMapping("/goodTest")
    public String test(){
        return "user/goods";
    }

    @RequestMapping("/good")
    public String detail(@RequestParam("bookid") Integer id, Model model){
        Product good = productService.good(id);
        model.addAttribute("goodInfo",good);
        return "user/goods";
    }

    @RequestMapping("/comment")
    @ResponseBody
    public List<AccountComment> comment(@RequestParam("bookid") Integer id){
        List<AccountComment> comments = commentService.OneComment(id);
        return comments;
    }



//    @RequestMapping("/comment")
//    public String comment(@RequestParam("bookid") Integer id,Model model){
//        List<AccountComment> accountComments = commentService.OneComment(id);
//        System.out.println(accountComments);
//        model.addAttribute("comment",accountComments);
//        return "user/goods";
//    }




}
