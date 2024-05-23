package com.example.eventnook.espacios.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.eventnook.espacios.repositories.entities.Space;
import com.example.eventnook.espacios.services.SpaceService;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class SpaceController {
    
    @Autowired
    private SpaceService spaceService;

    @GetMapping("/spaces")
    public ResponseEntity<List<Space>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(spaceService.findAll());
    }

    @GetMapping("/spaces/{eventType}")
    public ResponseEntity<List<Space>> findByEventType(@PathVariable Integer eventType) {
        return ResponseEntity.status(HttpStatus.OK).body(spaceService.findByEventType(eventType));
    }

    @GetMapping("/space/{id}")
    public ResponseEntity<Space> findById(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(spaceService.findById(id));
    }

    @GetMapping("/spacesByCapacity/{capacity}")
    public ResponseEntity<List<Space>> findByCapacity(@PathVariable int capacity) {
        return ResponseEntity.status(HttpStatus.OK).body(spaceService.findByCapacity(capacity));
    }

    @GetMapping("/spacesFiltered/{eventType}/{capacity}")
    public ResponseEntity<List<Space>> findByEventTypeAndCapacity(@PathVariable Integer eventType, @PathVariable int capacity) {
        return ResponseEntity.status(HttpStatus.OK).body(spaceService.findByEventTypeAndCapacity(eventType, capacity));
    }

}
