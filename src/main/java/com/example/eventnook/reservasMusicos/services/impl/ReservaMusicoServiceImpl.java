package com.example.eventnook.reservasMusicos.services.impl;

import com.example.eventnook.reservasMusicos.repositories.entity.ReservaMusico;
import com.example.eventnook.reservasMusicos.services.ReservaMusicoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservaMusicoServiceImpl implements ReservaMusicoService {
    @Autowired
    ReservaMusicoService reservaMusicoService;
    @Override
    public List<ReservaMusico> findAll() {
        return reservaMusicoService.findAll();
    }

    @Override
    public void createReservaMusico(ReservaMusico reservaMusico) {
        reservaMusicoService.createReservaMusico(reservaMusico);
    }
}
