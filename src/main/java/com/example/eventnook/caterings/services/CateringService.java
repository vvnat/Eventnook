package com.example.eventnook.caterings.services;

import com.example.eventnook.caterings.repositories.entities.Catering;

import java.util.List;

public interface CateringService {

    List<Catering> findAll();

    List<Catering> findByEventType(Integer eventType);

    Catering findById(Long id);
}
