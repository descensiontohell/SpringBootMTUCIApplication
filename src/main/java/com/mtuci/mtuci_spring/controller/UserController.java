package com.mtuci.mtuci_spring.controller;

import com.mtuci.mtuci_spring.entity.User;
import com.mtuci.mtuci_spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String getAll(Model model) {
        List<User> userList = userService.getAll();
        model.addAttribute("userList", userList);
        model.addAttribute("userSize", userList.size());
        return "users";
    }

    @RequestMapping("/delete/{id}")
    public String deleteUser(@PathVariable int id) {
        userService.delete(id);
        return "redirect:/";
    }

    @PostMapping("/add")
    public String addUser(@ModelAttribute User user) {
        userService.save(user);
        return "redirect:/";
    }
}
