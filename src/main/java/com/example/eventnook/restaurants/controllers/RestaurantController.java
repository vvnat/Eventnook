package com.example.eventnook.restaurants.controllers;

import com.example.eventnook.espacios.repositories.entities.Space;
import com.example.eventnook.espacios.services.SpaceService;
import com.example.eventnook.restaurants.repositories.entities.Restaurant;
import com.example.eventnook.restaurants.services.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class RestaurantController {

    @Autowired
    private RestaurantService restaurantService;

    @GetMapping("/restaurants")
    public ResponseEntity<List<Restaurant>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(restaurantService.findAll());
    }

    @GetMapping("/restaurant/{id}")
    public ResponseEntity<Restaurant> findById(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(restaurantService.findById(id));
    }
}
