package com.example.eventnook.caterings.controllers;

import com.example.eventnook.caterings.repositories.entities.Catering;
import com.example.eventnook.caterings.services.CateringService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class CateringController {

    @Autowired
    private CateringService cateringService;

    @GetMapping("/caterings")
    public ResponseEntity<List<Catering>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(cateringService.findAll());
    }

    @GetMapping("/caterings/{eventType}")
    public ResponseEntity<List<Catering>> findByEventType(@PathVariable Integer eventType) {
        return ResponseEntity.status(HttpStatus.OK).body(cateringService.findByEventType(eventType));
    }

    @GetMapping("/catering/{id}")
    public ResponseEntity<Catering> findById(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(cateringService.findById(id));
    }
}
