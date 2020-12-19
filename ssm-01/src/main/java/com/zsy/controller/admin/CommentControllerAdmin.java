package com.zsy.controller.admin;

import com.zsy.domain.Comment;
import com.zsy.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/admin/comment")
@Controller
public class CommentControllerAdmin {
    @Autowired
    private ICommentService commentService;

    @RequestMapping("/commentAll")
    public String commentAll(Model model) {
        List<Comment> comments = commentService.commentAll();
        model.addAttribute("commentAll", comments);
        return "admin/CommentList";
    }

    @RequestMapping("/commentDel")
    public String commentDel(Integer id) {
        Integer integer = commentService.delComment(id);
        if (integer == -1) {
            return null;
        }
        return "redirect:/admin/comment/commentAll";

    }
}
