package com.example.eventnook.espacios.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.eventnook.espacios.exceptions.SpaceNotFoundException;
import com.example.eventnook.espacios.repositories.dao.SpaceRepository;
import com.example.eventnook.espacios.repositories.entities.Space;
import com.example.eventnook.espacios.services.SpaceService;

@Service
public class SpaceServiceImpl implements SpaceService{

    @Autowired
    private SpaceRepository spaceRepository;

    @Override
    public List<Space> findAll() {
        return spaceRepository.findAll();
    }

    @Override
    public List<Space> findByEventType(Integer eventType) {
       return spaceRepository.findSpaceByEventType(eventType);
    }

    @Override
    public Space findById(Long id) {
        return spaceRepository.findById(id)
        .orElseThrow(() -> new SpaceNotFoundException(id));
    }    
}
