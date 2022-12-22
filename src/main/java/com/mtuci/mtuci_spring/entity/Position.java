package com.mtuci.mtuci_spring.entity;

import jakarta.persistence.*;

import java.util.Set;

@Entity
@Table(name = "positions")
public class Position {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String name;

    private Integer salary;

    @OneToMany(mappedBy="position")
    private Set<Employee> employees;

    public Position() {
    }

    public Position(Integer id, String name, Integer salary) {
        this.id = id;
        this.name = name;
        this.salary = salary;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    @PreRemove
    public void setEmployeePositionsToNull() {
        employees.forEach(e -> e.setPosition(null));
    }
}
