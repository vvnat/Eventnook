package com.example.eventnook.reservasRestaurantes.services;

import com.example.eventnook.reservasRestaurantes.repositories.entities.ReservaRestaurante;

import java.sql.Date;
import java.util.List;

public interface ReservaRestauranteService {
    List<ReservaRestaurante> findAll();

    void createReservaRestaurante(ReservaRestaurante reservaRestaurante);

    List<ReservaRestaurante> findByIdRestaurante(Long restaurantId);

    List<ReservaRestaurante> findByDateRange(Date startDate, Date endDate);
}
