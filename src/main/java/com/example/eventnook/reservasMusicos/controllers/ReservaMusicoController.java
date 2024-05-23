package com.example.eventnook.reservasMusicos.controllers;

import com.example.eventnook.reservasMusicos.repositories.entity.ReservaMusico;
import com.example.eventnook.reservasMusicos.services.ReservaMusicoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class ReservaMusicoController {
    @Autowired
    ReservaMusicoService reservaMusicoService;

    @GetMapping("/reservasMusicos")
    public ResponseEntity<List<ReservaMusico>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(reservaMusicoService.findAll());
    }

    @PostMapping("/reservasMusicos/create")
    public ResponseEntity<ReservaMusico> createReservaMusico(@RequestBody ReservaMusico reservaMusico) {
         reservaMusicoService.createReservaMusico(reservaMusico);
         return ResponseEntity.status(HttpStatus.CREATED).body(reservaMusico);
     }

    @GetMapping("/reservasMusicos/{musicianId}")
    public ResponseEntity<List<ReservaMusico>> findByIdMusico(@PathVariable Long musicianId) {
        return ResponseEntity.status(HttpStatus.OK).body(reservaMusicoService.findByIdMusico(musicianId));
    }
}
