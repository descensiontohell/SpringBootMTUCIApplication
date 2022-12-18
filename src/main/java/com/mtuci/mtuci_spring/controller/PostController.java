package com.mtuci.mtuci_spring.controller;

import com.mtuci.mtuci_spring.entity.Post;
import com.mtuci.mtuci_spring.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @GetMapping("/post")
    public String getAll(Model model) {
        List<Post> postList = postService.getAll();
        model.addAttribute("postList", postList);
        model.addAttribute("postSize", postList.size());
        return "posts";
    }

    @RequestMapping("/post/delete/{id}")
    public String deletePost(@PathVariable int id) {
        postService.delete(id);
        return "redirect:/posts";
    }

    @PostMapping("/post/add")
    public String addPost(@ModelAttribute Post post) {
        postService.save(post);
        return "redirect:/posts";
    }
}
