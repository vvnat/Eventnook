package com.example.eventnook.restaurants.services;

import com.example.eventnook.restaurants.repositories.entities.Restaurant;

import java.util.List;

public interface RestaurantService {
    List<Restaurant> findAll();

    Restaurant findById(Long id);
}
