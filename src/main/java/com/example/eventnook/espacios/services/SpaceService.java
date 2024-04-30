package com.example.eventnook.espacios.services;

import java.util.List;

import javax.swing.event.DocumentEvent.EventType;

import com.example.eventnook.espacios.repositories.entities.Space;

public interface SpaceService {

    List<Space> findAll();

    List<Space> findByEventType(EventType eventType);
    
    Space findById(Long id);
}
