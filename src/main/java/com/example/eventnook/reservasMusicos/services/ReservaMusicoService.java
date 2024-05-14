package com.example.eventnook.reservasMusicos.services;

import com.example.eventnook.reservasMusicos.repositories.entity.ReservaMusico;

import java.util.List;

public interface ReservaMusicoService {
    List<ReservaMusico> findAll();

    void createReservaMusico(ReservaMusico reservaMusico);
}
