package com.mtuci.mtuci_spring.controller;

import com.mtuci.mtuci_spring.entity.Role;
import com.mtuci.mtuci_spring.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class RoleController {

    @Autowired
    private RoleService roleService;

    @RequestMapping("/role/delete/{id}")
    public String deleteRole(@PathVariable int id) {
        roleService.delete(id);
        return "redirect:/";
    }

    @PostMapping("/role/add")
    public String addRole(@ModelAttribute Role role) {
        roleService.save(role);
        return "redirect:/";
    }

    @GetMapping("/role/edit/{id}")
    public String edit(Model model, @PathVariable int id) {
        Role targetRole = roleService.getOne(id);
        model.addAttribute("role", targetRole);

        return "edit_role";

    }

    @PostMapping("/role/edit/{id}")
    public String edit(@ModelAttribute Role role) {
        roleService.save(role);
        return "redirect:/";
    }
}
