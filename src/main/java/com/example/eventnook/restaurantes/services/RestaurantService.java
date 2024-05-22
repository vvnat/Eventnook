package com.example.eventnook.restaurantes.services;

import com.example.eventnook.restaurantes.repositories.entities.Restaurant;

import java.util.List;

public interface RestaurantService {
    List<Restaurant> findAll();

    Restaurant findById(Long id);

    List<Restaurant> findByCapacity(int capacity);
}
