package com.example.eventnook.reservasCaterings.controllers;

import com.example.eventnook.reservasCaterings.repositories.entities.ReservaCatering;
import com.example.eventnook.reservasCaterings.services.ReservaCateringService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class ReservaCateringController {

    @Autowired
    private ReservaCateringService reservaCateringService;

    @GetMapping("/reservasCaterings")
    public ResponseEntity<List<ReservaCatering>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(reservaCateringService.findAll());
    }

    @PostMapping("/reservasCaterings/create")
    public ResponseEntity<ReservaCatering> createReservaCatering(@RequestBody ReservaCatering reservaCatering) {
        reservaCateringService.createReservaCatering(reservaCatering);
        return ResponseEntity.status(HttpStatus.CREATED).body(reservaCatering);
    }
}
