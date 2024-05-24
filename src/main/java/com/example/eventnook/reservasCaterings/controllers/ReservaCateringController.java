package com.example.eventnook.reservasCaterings.controllers;

import com.example.eventnook.reservasCaterings.repositories.entities.ReservaCatering;
import com.example.eventnook.reservasCaterings.services.ReservaCateringService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
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

   /* @GetMapping("/reservasCaterings/{cateringId}")
    public ResponseEntity<List<ReservaCatering>> findByIdCatering(@PathVariable Long cateringId) {
        return ResponseEntity.status(HttpStatus.OK).body(reservaCateringService.findByIdCatering(cateringId));
    } */

    @GetMapping("/reservasCaterings/{startDate}/{endDate}")
    public ResponseEntity<List<ReservaCatering>> findByDate(@PathVariable LocalDateTime startDate, @PathVariable LocalDateTime endDate) {
        return ResponseEntity.status(HttpStatus.OK).body(reservaCateringService.findByDateRange(startDate, endDate));
    }
}
