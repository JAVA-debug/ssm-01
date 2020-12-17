package com.zsy.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zsy.domain.Account;
import com.zsy.domain.Comment;
import com.zsy.domain.Product;
import com.zsy.service.ICommentService;
import com.zsy.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ListController {
    @Autowired
    private IProductService productService;
    @Autowired
    private ICommentService commentService;

    @RequestMapping("/novel")
    public String HotSell(Integer id, Model model,@RequestParam(defaultValue = "1")Integer pageNum){
        PageHelper.startPage(pageNum,5);
        List<Product> novel = productService.novel(id);
        PageInfo<Product> info = new PageInfo<Product>(novel);
        model.addAttribute("id",id);
        model.addAttribute("pageInfo",info);
        model.addAttribute("books",novel);

        List<Product> limit = productService.limit(3, 4);
        model.addAttribute("productTuijian",limit);

        return "user/list";
    }



    @RequestMapping("/commentList")
    public String CommentTest(HttpServletRequest request,Model model){
        Account account = (Account) request.getSession().getAttribute("account");
        List<Comment> list = commentService.findList(account.getId());
        model.addAttribute("commentList",list);
        return "user/comment";
    }

    @RequestMapping("/deleteComment")
    @ResponseBody
    public String delComment(Integer id){
        Integer res = commentService.delComment(id);
        if (res == 1){
            return "success";
        }

        return "error";
    }

    @RequestMapping("/toAddComment")
    public String toAddComment(@RequestParam("pid") Integer productId,Model model){
        Product good = productService.good(productId);
        model.addAttribute("commentGood",good);
        return "user/addComment";
    }

    @RequestMapping("/addComment")
    public String addComment(Comment comment,HttpServletRequest request){
        Account account = (Account) request.getSession().getAttribute("account");
        comment.setUserId(account.getId());
        Integer res = commentService.addComment(comment);
        if (res == -1){
            return "user/error";
        }

        productService.updateCom(comment.getProductId());
        return "redirect:/commentList";
    }

//    @RequestMapping("/page")
//    public String pageHelper(@RequestParam(defaultValue = "1")Integer pageNum,Model model){
//        PageHelper.startPage(pageNum,5);
//        List<Product> all = productService.findAll();
//        PageInfo<Product> info = new PageInfo<Product>(all);
//        model.addAttribute("pageInfo",info);
//        return "user/list";
//    }
}
