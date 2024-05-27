package com.example.eventnook.eventos.services;

import com.example.eventnook.eventos.repositories.entities.Event;

import java.util.List;

public interface EventService {
    List<Event> findAll();

    List<Event> findByCreatorId(Long creatorId);

    Event findById(Long id);

    void createEvent(Event event);
}
