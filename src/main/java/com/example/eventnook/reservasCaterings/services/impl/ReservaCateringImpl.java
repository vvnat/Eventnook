package com.example.eventnook.reservasCaterings.services.impl;

import com.example.eventnook.reservasCaterings.repositories.dao.ReservaCateringRepository;
import com.example.eventnook.reservasCaterings.repositories.entities.ReservaCatering;
import com.example.eventnook.reservasCaterings.services.ReservaCateringService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReservaCateringImpl implements ReservaCateringService {

    @Autowired
    ReservaCateringRepository reservaCateringRepository;

    @Override
    public List<ReservaCatering> findAll() {
        return reservaCateringRepository.findAll();
    }

    @Override
    public void createReservaCatering(ReservaCatering reservaCatering) {
        reservaCateringRepository.save(reservaCatering);
    }

    @Override
    public List<ReservaCatering> findByIdCatering(Long cateringId) {
        return reservaCateringRepository.findByIdCatering(cateringId);
    }
}
