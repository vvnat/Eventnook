package com.example.eventnook.eventos.services.Impl;

import com.example.eventnook.espacios.exceptions.SpaceNotFoundException;
import com.example.eventnook.eventos.exceptions.EventNotFoundException;
import com.example.eventnook.eventos.repositories.dao.EventRepository;
import com.example.eventnook.eventos.repositories.entities.Event;
import com.example.eventnook.eventos.services.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventServiceImpl implements EventService {
    @Autowired
    private EventRepository eventRepository;

    @Override
    public List<Event> findAll() {
        return eventRepository.findAll();
    }

    @Override
    public List<Event> findByCreatorId(Long creatorId) {
        return eventRepository.findAllByCreatorId(creatorId);
    }

    @Override
    public Event findById(Long id) {
        return eventRepository.findById(id)
                .orElseThrow(() -> new EventNotFoundException(id));
    }
}
