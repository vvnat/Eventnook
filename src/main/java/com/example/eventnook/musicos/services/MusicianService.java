package com.example.eventnook.musicos.services;

import java.util.List;

import com.example.eventnook.musicos.repositories.entities.Musician;

public interface MusicianService {

    List<Musician> findAll();

    List<Musician> findByEventType(Integer eventType);

    Musician findById(Long id);
}
