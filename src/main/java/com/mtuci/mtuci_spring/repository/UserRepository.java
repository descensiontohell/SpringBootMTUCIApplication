package com.mtuci.mtuci_spring.repository;

import com.mtuci.mtuci_spring.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
