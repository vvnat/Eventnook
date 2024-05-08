package com.example.eventnook.restaurantes.exceptions;

import com.example.eventnook.shared.exceptions.DataNotFoundException;

public class RestaurantNotFoundException extends DataNotFoundException {
    public RestaurantNotFoundException(Long id) {
        super("El restaurante con id " + id + " no existe");
    }
}
