package com.example.eventnook.eventos.controllers;

import com.example.eventnook.eventos.repositories.entities.Event;
import com.example.eventnook.eventos.services.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class EventController {

    @Autowired
    private EventService eventService;

    @GetMapping("/events")
    public ResponseEntity<List<Event>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(eventService.findAll());
    }

    @GetMapping("/events/{id}")
    public ResponseEntity<List<Event>> findByCreatorId(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(eventService.findByCreatorId(id));
    }

    @GetMapping("/event/{id}")
    public ResponseEntity<Event> findById(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(eventService.findById(id));
    }

    @PostMapping("/event/create")
    public ResponseEntity<Event> createEvent(@RequestBody Event event) {
        eventService.createEvent(event);
        return ResponseEntity.status(HttpStatus.CREATED).body(event);
    }
}
