package com.mtuci.mtuci_spring.service;

import com.mtuci.mtuci_spring.entity.Employee;
import com.mtuci.mtuci_spring.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    public List<Employee> getAll() {
        return employeeRepository.findAll();
    }

    public Employee getOne(Integer employeeId) {
        return employeeRepository.getReferenceById(employeeId);
    }

    public Employee save(Employee employee) {
        return employeeRepository.save(employee);
    }

    public void delete(int id) {
        employeeRepository.deleteById(id);
    }
}
