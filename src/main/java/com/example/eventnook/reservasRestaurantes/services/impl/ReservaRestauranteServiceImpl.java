package com.example.eventnook.reservasRestaurantes.services.impl;

import com.example.eventnook.reservasRestaurantes.repositories.entities.ReservaRestaurante;
import com.example.eventnook.reservasRestaurantes.services.ReservaRestauranteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservaRestauranteServiceImpl implements ReservaRestauranteService {
    @Autowired
    ReservaRestauranteService reservaRestauranteService;
    @Override
    public List<ReservaRestaurante> findAll() {
        return reservaRestauranteService.findAll();
    }

    @Override
    public void createReservaRestaurante(ReservaRestaurante reservaRestaurante) {
        reservaRestauranteService.createReservaRestaurante(reservaRestaurante);
    }
}
