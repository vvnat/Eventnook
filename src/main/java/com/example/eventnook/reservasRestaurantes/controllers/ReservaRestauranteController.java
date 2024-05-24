package com.example.eventnook.reservasRestaurantes.controllers;

import com.example.eventnook.reservasRestaurantes.repositories.entities.ReservaRestaurante;
import com.example.eventnook.reservasRestaurantes.services.ReservaRestauranteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class ReservaRestauranteController {
    @Autowired
    ReservaRestauranteService reservaRestauranteService;

    @GetMapping("/reservasRestaurantes")
    public ResponseEntity<List<ReservaRestaurante>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(reservaRestauranteService.findAll());
    }

    @PostMapping("/reservasRestaurantes/create")
    public ResponseEntity<ReservaRestaurante> createReservaRestaurante(@RequestBody ReservaRestaurante reservaRestaurante) {
         reservaRestauranteService.createReservaRestaurante(reservaRestaurante);
         return ResponseEntity.status(HttpStatus.CREATED).body(reservaRestaurante);
     }

  /*  @GetMapping("/reservasRestaurantes/{restaurantId}")
    public ResponseEntity<List<ReservaRestaurante>> findByIdRestaurante(@PathVariable Long restaurantId) {
        return ResponseEntity.status(HttpStatus.OK).body(reservaRestauranteService.findByIdRestaurante(restaurantId));
    } */

    @GetMapping("/reservasRestaurantes/{startDate}/{endDate}")
    public ResponseEntity<List<ReservaRestaurante>> findByDate(@PathVariable LocalDateTime startDate, @PathVariable LocalDateTime endDate) {
        return ResponseEntity.status(HttpStatus.OK).body(reservaRestauranteService.findByDateRange(startDate, endDate));
    }

}
