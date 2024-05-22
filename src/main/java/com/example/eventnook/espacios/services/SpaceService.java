package com.example.eventnook.espacios.services;

import java.util.List;

import com.example.eventnook.espacios.repositories.entities.Space;

public interface SpaceService {

    List<Space> findAll();

    List<Space> findByEventType(Integer eventType);
    
    Space findById(Long id);

    List<Space> findByCapacity(int capacity);
}
