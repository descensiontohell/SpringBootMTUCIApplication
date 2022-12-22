package com.mtuci.mtuci_spring.entity;

import jakarta.persistence.*;

import java.util.Set;

@Entity
@Table(name = "employees")
public class Employee {

   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   private Integer id;

   private String email;

   private String name;

   @ManyToOne
   @JoinColumn(name="position_id")
   private Position position;

   @OneToMany(mappedBy="employee", cascade = CascadeType.ALL)
   private Set<Task> tasks;

   public Employee() {
   }

   public Employee(Integer id, String email, String name, Position position) {
       this.id = id;
       this.email = email;
       this.name = name;
       this.position = position;
   }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

}
