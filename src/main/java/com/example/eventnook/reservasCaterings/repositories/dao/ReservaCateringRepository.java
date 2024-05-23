package com.example.eventnook.reservasCaterings.repositories.dao;

import com.example.eventnook.reservasCaterings.repositories.entities.ReservaCatering;
import jakarta.transaction.Transactional;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface ReservaCateringRepository  extends JpaRepository<ReservaCatering, Long> {
    @Query("SELECT r FROM ReservaCatering r WHERE r.cateringId = ?1")
    List<ReservaCatering> findByIdCatering(Long cateringId);
}
