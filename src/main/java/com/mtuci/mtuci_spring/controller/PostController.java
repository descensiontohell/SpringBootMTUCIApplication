package com.mtuci.mtuci_spring.controller;

import com.mtuci.mtuci_spring.entity.Post;
import com.mtuci.mtuci_spring.entity.User;
import com.mtuci.mtuci_spring.service.PostService;
import com.mtuci.mtuci_spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @Autowired
    private UserService userService;

    @GetMapping("/post")
    public String getAll(Model model) {
        List<Post> postList = postService.getAll();
        List<User> userList = userService.getAll();
        model.addAttribute("userList", userList);
        model.addAttribute("userSize", userList.size());
        model.addAttribute("postList", postList);
        model.addAttribute("postSize", postList.size());
        return "posts";
    }

    @RequestMapping("/post/delete/{id}")
    public String deletePost(@PathVariable int id) {
        postService.delete(id);
        return "redirect:/post";
    }

    @PostMapping("/post/add")
    public String addPost(@ModelAttribute Post post, @RequestBody MultiValueMap<String, String> formData) {
        Integer userId = Integer.parseInt(formData.get("user_id").get(0).toString());

        User postUser = userService.getOne(userId);

        post.setUser(postUser);

        postService.save(post);
        return "redirect:/post";
    }
}
