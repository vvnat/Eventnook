package com.example.eventnook.musicos.services.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.eventnook.musicos.exceptions.MusicianNotFoundException;
import com.example.eventnook.musicos.repositories.dao.MusicianRepository;
import com.example.eventnook.musicos.repositories.entities.Musician;
import com.example.eventnook.musicos.services.MusicianService;

@Service
public class MusicianServiceImpl implements MusicianService {

    @Autowired
    private MusicianRepository musicianRepository;

    @Override
    public List<Musician> findAll() {
        return musicianRepository.findAll();
    }

    @Override
    public List<Musician> findByEventType(Integer eventType) {
        return musicianRepository.findMusicianByEventType(eventType);
    }

    @Override
    public Musician findById(Long id) {
        return musicianRepository.findById(id)
                .orElseThrow(() -> new MusicianNotFoundException(id));
    }
}