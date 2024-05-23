package com.example.eventnook.reservasEspacios.repositories.dao;

import com.example.eventnook.reservasEspacios.repositories.entities.ReservaEspacio;
import jakarta.transaction.Transactional;

import java.sql.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface ReservaEspacioRepository  extends JpaRepository<ReservaEspacio, Long> {
    @Query("SELECT r FROM ReservaEspacio r WHERE r.spaceId = ?1")
    List<ReservaEspacio> findByIdEspacio(Long spaceId);

    @Query("SELECT r FROM ReservaEspacio r WHERE r.startDate >= ?1 AND r.endDate <= ?2")
    List<ReservaEspacio> findByDateRange(Date startDate, Date endDate);
}
