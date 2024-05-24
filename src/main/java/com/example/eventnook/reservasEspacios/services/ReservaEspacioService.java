package com.example.eventnook.reservasEspacios.services;

import com.example.eventnook.reservasEspacios.repositories.entities.ReservaEspacio;

import java.sql.Date;
import java.util.List;

import org.joda.time.DateTime;

public interface ReservaEspacioService {
    List<ReservaEspacio> findAll();

    void createReservaEspacio(ReservaEspacio reservaEspacio);

    List<ReservaEspacio> findByIdEspacio(Long spaceId);

    List<ReservaEspacio> findByDateRange(DateTime startDate, DateTime endDate);
}
