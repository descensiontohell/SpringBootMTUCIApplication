package com.mtuci.mtuci_spring.controller;

import com.mtuci.mtuci_spring.entity.Position;
import com.mtuci.mtuci_spring.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class PositionController {

    @Autowired
    private PositionService positionService;

    @RequestMapping("/position/delete/{id}")
    public String deletePosition(@PathVariable int id) {
        positionService.delete(id);
        return "redirect:/";
    }

    @PostMapping("/position/add")
    public String addPosition(@ModelAttribute Position position) {
        positionService.save(position);
        return "redirect:/";
    }

    @GetMapping("/position/edit/{id}")
    public String edit(Model model, @PathVariable int id) {
        Position targetPosition = positionService.getOne(id);
        model.addAttribute("position", targetPosition);
        model.addAttribute("govno", targetPosition.getSalary().toString()); // DON'T CHANGE OR EVERYTHING BREAKS DOWN

        return "edit_position";

    }

    @PostMapping("/position/edit/{id}")
    public String edit(@ModelAttribute Position position) {
        positionService.save(position);
        return "redirect:/";
    }
}
