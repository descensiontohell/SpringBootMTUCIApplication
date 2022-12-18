package com.mtuci.mtuci_spring.entity;

import jakarta.persistence.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.data.jpa.provider.HibernateUtils;

import java.util.Set;

@Entity
@Table(name = "users")
public class User {

   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   private Integer id;

   private String email;

   private Boolean gender;

   @ManyToOne
   @JoinColumn(name="role_id", nullable=false)
   private Role role;

   @OneToMany(mappedBy="user")
   private Set<Post> posts;

   public User() {
   }

   public User(Integer id, String email, Boolean gender, Role role) {
       this.id = id;
       this.email = email;
       this.gender = gender;
       this.role = role;
   }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Integer roleId) {
        Session session = new SessionFactory().openSession();
        Role role = session.get(Role.class, roleId);
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}