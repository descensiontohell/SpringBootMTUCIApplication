package com.mtuci.mtuci_spring.repository;

import com.mtuci.mtuci_spring.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {

}
