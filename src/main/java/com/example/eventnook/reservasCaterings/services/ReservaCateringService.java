package com.example.eventnook.reservasCaterings.services;

import com.example.eventnook.reservasCaterings.repositories.entities.ReservaCatering;

import java.util.List;

public interface ReservaCateringService {
    List<ReservaCatering> findAll();

    void createReservaCatering(ReservaCatering reservaCatering);
}
