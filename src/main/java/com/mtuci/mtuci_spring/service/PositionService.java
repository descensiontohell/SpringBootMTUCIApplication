package com.mtuci.mtuci_spring.service;

import com.mtuci.mtuci_spring.entity.Position;
import com.mtuci.mtuci_spring.repository.PositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PositionService {

    @Autowired
    private PositionRepository positionRepository;

    public Position getOne(Integer positionId) {
        return positionRepository.getReferenceById(positionId);
    }

    public List<Position> getAll() {
        return positionRepository.findAll();
    }

    public Position save(Position position) {
        return positionRepository.save(position);
    }

    public void delete(int id) {
        positionRepository.deleteById(id);
    }
}
