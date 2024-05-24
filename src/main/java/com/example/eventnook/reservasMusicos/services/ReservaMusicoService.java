package com.example.eventnook.reservasMusicos.services;

import com.example.eventnook.reservasMusicos.repositories.entity.ReservaMusico;

import java.time.LocalDateTime;
import java.util.List;

public interface ReservaMusicoService {
    List<ReservaMusico> findAll();

    void createReservaMusico(ReservaMusico reservaMusico);

    List<ReservaMusico> findByIdMusico(Long musicianId);

    List<ReservaMusico> findByDateRange(LocalDateTime startDate, LocalDateTime endDate);
}
