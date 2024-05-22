package com.example.eventnook.restaurantes.services.impl;

import com.example.eventnook.restaurantes.exceptions.RestaurantNotFoundException;
import com.example.eventnook.restaurantes.repositories.dao.RestaurantRepository;
import com.example.eventnook.restaurantes.repositories.entities.Restaurant;
import com.example.eventnook.restaurantes.services.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantServiceImpl implements RestaurantService {

    @Autowired
    private RestaurantRepository restaurantRepository;


    @Override
    public List<Restaurant> findAll() {
        return restaurantRepository.findAll();
    }

    @Override
    public Restaurant findById(Long id) {
        return restaurantRepository.findById(id)
                .orElseThrow(() -> new RestaurantNotFoundException(id));
    }

    @Override
    public List<Restaurant> findByCapacity(int capacity) {
        return restaurantRepository.findByCapacity(capacity);
    }
}
