package com.example.eventnook.reservasEspacios.services.impl;

import com.example.eventnook.reservasEspacios.repositories.dao.ReservaEspacioRepository;
import com.example.eventnook.reservasEspacios.repositories.entities.ReservaEspacio;
import com.example.eventnook.reservasEspacios.services.ReservaEspacioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservaEspacioServiceImpl implements ReservaEspacioService{
    @Autowired
    ReservaEspacioRepository reservaEspacioRepository;
    @Override
    public List<ReservaEspacio> findAll() {
        return reservaEspacioRepository.findAll();
    }

    @Override
    public void createReservaEspacio(ReservaEspacio reservaEspacio) {
        reservaEspacioRepository.save(reservaEspacio);
    }

    @Override
    public List<ReservaEspacio> findByIdEspacio(Long spaceId) {
        return reservaEspacioRepository.findByIdEspacio(spaceId);
    }

    @Override
    public List<ReservaEspacio> findByDateRange(java.sql.Date startDate, java.sql.Date endDate) {
        return reservaEspacioRepository.findByDateRange(startDate, endDate);
    }
}
