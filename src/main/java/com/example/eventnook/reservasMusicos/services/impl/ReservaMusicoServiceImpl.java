package com.example.eventnook.reservasMusicos.services.impl;

import com.example.eventnook.reservasMusicos.repositories.dao.ReservaMusicoRepository;
import com.example.eventnook.reservasMusicos.repositories.entity.ReservaMusico;
import com.example.eventnook.reservasMusicos.services.ReservaMusicoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class ReservaMusicoServiceImpl implements ReservaMusicoService {
    @Autowired
    ReservaMusicoRepository reservaMusicoRepository;
    @Override
    public List<ReservaMusico> findAll() {
        return reservaMusicoRepository.findAll();
    }

    @Override
    public void createReservaMusico(ReservaMusico reservaMusico) {
        reservaMusicoRepository.save(reservaMusico);
    }

    @Override
    public List<ReservaMusico> findByIdMusico(Long musicianId) {
        return reservaMusicoRepository.findByIdMusico(musicianId);
    }

    @Override
    public List<ReservaMusico> findByDateRange(LocalDateTime startDate, LocalDateTime endDate) {
        return reservaMusicoRepository.findByDateRange(startDate, endDate);
    }
}
