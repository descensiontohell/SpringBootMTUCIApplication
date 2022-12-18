package com.mtuci.mtuci_spring.controller;

import com.mtuci.mtuci_spring.entity.Role;
import com.mtuci.mtuci_spring.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class RoleController {

    @Autowired
    private RoleService roleService;

    @GetMapping("/role")
    public String getAll(Model model) {
        List<Role> roleList = roleService.getAll();
        model.addAttribute("roleList", roleList);
        model.addAttribute("roleSize", roleList.size());
        return "roles";
    }

    @RequestMapping("/role/delete/{id}")
    public String deleteRole(@PathVariable int id) {
        roleService.delete(id);
        return "redirect:/role";
    }

    @PostMapping("/role/add")
    public String addRole(@ModelAttribute Role role) {
        roleService.save(role);
        return "redirect:/role";
    }
}
