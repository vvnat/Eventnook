package com.example.eventnook.reservasEspacios.services;

import com.example.eventnook.reservasEspacios.repositories.entities.ReservaEspacio;

import java.time.LocalDateTime;
import java.util.List;

public interface ReservaEspacioService {
    List<ReservaEspacio> findAll();

    void createReservaEspacio(ReservaEspacio reservaEspacio);

    List<ReservaEspacio> findByIdEspacio(Long spaceId);

    List<ReservaEspacio> findByDateRange(LocalDateTime startDate, LocalDateTime endDate);
}
