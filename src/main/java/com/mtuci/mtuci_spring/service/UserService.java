package com.mtuci.mtuci_spring.service;

import com.mtuci.mtuci_spring.entity.User;
import com.mtuci.mtuci_spring.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public List<User> getAll() {
        return userRepository.findAll();
    }

    public User getOne(Integer roleId) {
        return userRepository.getReferenceById(roleId);
    }

    public User save(User user) {
        return userRepository.save(user);
    }

    public void delete(int id) {
        userRepository.deleteById(id);
    }
}
