package com.mtuci.mtuci_spring.controller;

import com.mtuci.mtuci_spring.entity.Position;
import com.mtuci.mtuci_spring.entity.Task;
import com.mtuci.mtuci_spring.entity.Employee;
import com.mtuci.mtuci_spring.service.TaskService;
import com.mtuci.mtuci_spring.service.PositionService;
import com.mtuci.mtuci_spring.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private PositionService positionService;

    @Autowired
    private TaskService taskService;

    @GetMapping("/")
    public String getAll(Model model) {
        List<Employee> employeeList = employeeService.getAll();
        model.addAttribute("employeeList", employeeList);
        model.addAttribute("employeeSize", employeeList.size());

        List<Position> positionList = positionService.getAll();
        model.addAttribute("positionList", positionList);
        model.addAttribute("positionSize", positionList.size());

        List<Task> taskList = taskService.getAll();
        model.addAttribute("taskList", taskList);
        model.addAttribute("taskSize", taskList.size());

        return "index";
    }

    @RequestMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable int id) {
        employeeService.delete(id);
        return "redirect:/";
    }

    @PostMapping("/add")
    public String addEmployee(@ModelAttribute Employee employee, @RequestBody MultiValueMap<String, String> formData) {
        Integer positionId = Integer.parseInt(formData.get("position_id").get(0).toString());
        Position employeePosition = positionService.getOne(positionId);

        employee.setPosition(employeePosition);

        employeeService.save(employee);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String edit(Model model, @PathVariable int id) {
        Employee targetEmployee = employeeService.getOne(id);
        model.addAttribute("employee", targetEmployee);

        List<Position> positionList = positionService.getAll();
        model.addAttribute("positionList", positionList);
        model.addAttribute("positionSize", positionList.size());

        return "edit_employee";

    }

    @PostMapping("/edit/{id}")
    public String edit(@ModelAttribute Employee employee, @RequestBody MultiValueMap<String, String> formData) {
        Integer positionId = Integer.parseInt(formData.get("position_id").get(0).toString());
        Position employeePosition = positionService.getOne(positionId);

        employee.setPosition(employeePosition);

        employeeService.save(employee);

        return "redirect:/";

    }
}
