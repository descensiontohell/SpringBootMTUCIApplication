package com.mtuci.mtuci_spring.controller;

import com.mtuci.mtuci_spring.entity.Task;
import com.mtuci.mtuci_spring.entity.Employee;
import com.mtuci.mtuci_spring.service.TaskService;
import com.mtuci.mtuci_spring.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

@Controller
public class TaskController {

    @Autowired
    private TaskService taskService;

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/task/delete/{id}")
    public String deleteTask(@PathVariable int id) {
        taskService.delete(id);
        return "redirect:/";
    }

    @PostMapping("/task/add")
    public String addTask(@ModelAttribute Task task, @RequestBody MultiValueMap<String, String> formData) {
        Integer employeeId = Integer.parseInt(formData.get("employee_id").get(0).toString());

        Employee taskEmployee = employeeService.getOne(employeeId);

        task.setEmployee(taskEmployee);

        taskService.save(task);
        return "redirect:/";
    }

    @GetMapping("/task/edit/{id}")
    public String edit(Model model, @PathVariable int id) {
        Task targetTask = taskService.getOne(id);
        model.addAttribute("task", targetTask);

        return "edit_task";

    }

    @PostMapping("/task/edit/{id}")
    public String edit(@ModelAttribute Task task, @RequestBody MultiValueMap<String, String> formData) {
        Integer employeeId = Integer.parseInt(formData.get("employee_id").get(0).toString());

        Employee taskEmployee = employeeService.getOne(employeeId);

        task.setEmployee(taskEmployee);

        taskService.save(task);
        return "redirect:/";
    }
}
