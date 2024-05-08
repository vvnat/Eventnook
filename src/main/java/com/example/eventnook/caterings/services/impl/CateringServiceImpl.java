package com.example.eventnook.caterings.services.impl;

import com.example.eventnook.caterings.exceptions.CateringNotFoundException;
import com.example.eventnook.caterings.repositories.dao.CateringRepository;
import com.example.eventnook.caterings.repositories.entities.Catering;
import com.example.eventnook.caterings.services.CateringService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CateringServiceImpl implements CateringService {

    @Autowired
    private CateringRepository cateringRepository;

    @Override
    public List<Catering> findAll() {
        return cateringRepository.findAll();
    }

    @Override
    public List<Catering> findByEventType(Integer eventType) {
        return cateringRepository.findCateringByEventType(eventType);
    }

    @Override
    public Catering findById(Long id) {
        return cateringRepository.findById(id)
                .orElseThrow(() -> new CateringNotFoundException(id));
    }
}