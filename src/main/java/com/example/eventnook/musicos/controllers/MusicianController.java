package com.example.eventnook.musicos.controllers;

import com.example.eventnook.musicos.repositories.entities.Musician;
import com.example.eventnook.musicos.services.MusicianService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class MusicianController {

    @Autowired
    private MusicianService musicianService;

    @GetMapping("/musicians")
    public ResponseEntity<List<Musician>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(musicianService.findAll());
    }

    @GetMapping("/musicians/{eventType}")
    public ResponseEntity<List<Musician>> findByEventType(@PathVariable Integer eventType) {
        return ResponseEntity.status(HttpStatus.OK).body(musicianService.findByEventType(eventType));
    }

    @GetMapping("/musician/{id}")
    public ResponseEntity<Musician> findById(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(musicianService.findById(id));
    }
}
