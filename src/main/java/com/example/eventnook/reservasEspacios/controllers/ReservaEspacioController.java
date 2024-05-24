package com.example.eventnook.reservasEspacios.controllers;

import com.example.eventnook.reservasEspacios.repositories.entities.ReservaEspacio;
import com.example.eventnook.reservasEspacios.services.ReservaEspacioService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class ReservaEspacioController {

    @Autowired
    ReservaEspacioService reservaEspacioService;

    @GetMapping("/reservasEspacios")
    public ResponseEntity<List<ReservaEspacio>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(reservaEspacioService.findAll());
    }

    @PostMapping("/reservasEspacios/create")
    public ResponseEntity<ReservaEspacio> createReservaEspacio(@RequestBody ReservaEspacio reservaEspacio) {
         reservaEspacioService.createReservaEspacio(reservaEspacio);
         return ResponseEntity.status(HttpStatus.CREATED).body(reservaEspacio);
     }


   /* @GetMapping("/reservasEspacios/{spaceId}")
    public ResponseEntity<List<ReservaEspacio>> findByIdEspacio(@PathVariable Long spaceId) {
        return ResponseEntity.status(HttpStatus.OK).body(reservaEspacioService.findByIdEspacio(spaceId));
    } */

   @GetMapping("/reservasEspacios/{startDate}/{endDate}")
    public ResponseEntity<List<ReservaEspacio>> findByDate(@PathVariable LocalDateTime startDate, @PathVariable LocalDateTime endDate) {
        return ResponseEntity.status(HttpStatus.OK).body(reservaEspacioService.findByDateRange(startDate, endDate));
    }

   @PostMapping("/reservasEspacios/findByDateRange")
   public ResponseEntity<List<ReservaEspacio>> findByDateRange(@RequestBody LocalDateTime startDate, @RequestBody LocalDateTime endDate) {
       return ResponseEntity.status(HttpStatus.OK).body(reservaEspacioService.findByDateRange(startDate, endDate));
   }
}
