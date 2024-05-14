package com.example.eventnook.reservasMusicos.repositories.dao;

import com.example.eventnook.reservasMusicos.repositories.entity.ReservaMusico;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface ReservaMusicoRepository extends JpaRepository<ReservaMusico, Long> {
}
