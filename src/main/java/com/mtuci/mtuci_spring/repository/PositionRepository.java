package com.mtuci.mtuci_spring.repository;

import com.mtuci.mtuci_spring.entity.Position;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PositionRepository extends JpaRepository<Position, Integer> {

}
