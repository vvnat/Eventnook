package com.example.eventnook.reservasCaterings.repositories.dao;

import com.example.eventnook.reservasCaterings.repositories.entities.ReservaCatering;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface ReservaCateringRepository  extends JpaRepository<ReservaCatering, Long> {

}
