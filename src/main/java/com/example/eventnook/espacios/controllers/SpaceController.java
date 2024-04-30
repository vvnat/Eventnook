package com.example.eventnook.espacios.controllers;


import java.util.List;

import javax.swing.event.DocumentEvent.EventType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
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
    public ResponseEntity<List<Space>> findByEventType(EventType eventType) {
        return ResponseEntity.status(HttpStatus.OK).body(spaceService.findByEventType(eventType));
    }

    @GetMapping("/space/{id}")
    public ResponseEntity<Space> findById(Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(spaceService.findById(id));
    }
}
