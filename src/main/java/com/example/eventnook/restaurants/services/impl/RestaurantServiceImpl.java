package com.example.eventnook.restaurants.services.impl;

import com.example.eventnook.espacios.exceptions.SpaceNotFoundException;
import com.example.eventnook.restaurants.exceptions.RestaurantNotFoundException;
import com.example.eventnook.restaurants.repositories.dao.RestaurantRepository;
import com.example.eventnook.restaurants.repositories.entities.Restaurant;
import com.example.eventnook.restaurants.services.RestaurantService;
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
}
