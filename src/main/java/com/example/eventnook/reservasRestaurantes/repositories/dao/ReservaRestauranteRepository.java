package com.example.eventnook.reservasRestaurantes.repositories.dao;

import com.example.eventnook.reservasRestaurantes.repositories.entities.ReservaRestaurante;
import jakarta.transaction.Transactional;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface ReservaRestauranteRepository extends JpaRepository<ReservaRestaurante, Long> {
    @Query("SELECT r FROM ReservaRestaurante r WHERE r.restaurantId = ?1")
    List<ReservaRestaurante> findByIdRestaurante(Long restaurantId);

    @Query("SELECT r FROM ReservaRestaurante r WHERE r.startDate >= ?1 AND r.endDate <= ?2")
    List<ReservaRestaurante> findByDateRange(Date startDate, Date endDate);
}
