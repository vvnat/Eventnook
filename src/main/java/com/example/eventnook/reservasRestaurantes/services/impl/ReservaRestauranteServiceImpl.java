package com.example.eventnook.reservasRestaurantes.services.impl;

import com.example.eventnook.reservasRestaurantes.repositories.dao.ReservaRestauranteRepository;
import com.example.eventnook.reservasRestaurantes.repositories.entities.ReservaRestaurante;
import com.example.eventnook.reservasRestaurantes.services.ReservaRestauranteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class ReservaRestauranteServiceImpl implements ReservaRestauranteService {
    @Autowired
    ReservaRestauranteRepository reservaRestauranteRepository;
    @Override
    public List<ReservaRestaurante> findAll() {
        return reservaRestauranteRepository.findAll();
    }

    @Override
    public void createReservaRestaurante(ReservaRestaurante reservaRestaurante) {
        reservaRestauranteRepository.save(reservaRestaurante);
    }

    @Override
    public List<ReservaRestaurante> findByIdRestaurante(Long restaurantId) {
        return reservaRestauranteRepository.findByIdRestaurante(restaurantId);
    }

    @Override
    public List<ReservaRestaurante> findByDateRange(Date startDate, Date endDate) {
        return reservaRestauranteRepository.findByDateRange(startDate, endDate);
    }
}
