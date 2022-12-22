package com.mtuci.mtuci_spring.service;

import com.mtuci.mtuci_spring.entity.Task;
import com.mtuci.mtuci_spring.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskService {

    @Autowired
    private TaskRepository taskRepository;

    public Task getOne(Integer taskId) {
        return taskRepository.getReferenceById(taskId);
    }

    public List<Task> getAll() {
        return taskRepository.findAll();
    }

    public Task save(Task task) {
        return taskRepository.save(task);
    }

    public void delete(int id) {
        taskRepository.deleteById(id);
    }
}
