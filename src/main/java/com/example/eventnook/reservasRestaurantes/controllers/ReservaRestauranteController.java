package com.example.eventnook.reservasRestaurantes.controllers;

import com.example.eventnook.reservasRestaurantes.repositories.entities.ReservaRestaurante;
import com.example.eventnook.reservasRestaurantes.services.ReservaRestauranteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

}
