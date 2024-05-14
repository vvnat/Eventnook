package com.example.eventnook.reservasRestaurantes.repositories.dao;

import com.example.eventnook.reservasRestaurantes.repositories.entities.ReservaRestaurante;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface ReservaRestauranteRepository extends JpaRepository<ReservaRestaurante, Long> {
}
