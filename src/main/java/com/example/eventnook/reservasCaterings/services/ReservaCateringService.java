package com.example.eventnook.reservasCaterings.services;

import com.example.eventnook.reservasCaterings.repositories.entities.ReservaCatering;

import java.time.LocalDateTime;
import java.util.List;

public interface ReservaCateringService {
    List<ReservaCatering> findAll();

    void createReservaCatering(ReservaCatering reservaCatering);

    List<ReservaCatering> findByIdCatering(Long cateringId);

    List<ReservaCatering> findByDateRange(LocalDateTime startDate, LocalDateTime endDate);
}
