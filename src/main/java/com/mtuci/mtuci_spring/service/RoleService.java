package com.mtuci.mtuci_spring.service;

import com.mtuci.mtuci_spring.entity.Role;
import com.mtuci.mtuci_spring.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {

    @Autowired
    private RoleRepository roleRepository;

    public List<Role> getAll() {
        return roleRepository.findAll();
    }

    public Role save(Role role) {
        return roleRepository.save(role);
    }

    public void delete(int id) {
        roleRepository.deleteById(id);
    }
}
