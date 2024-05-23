package com.example.eventnook.reservasMusicos.repositories.dao;

import com.example.eventnook.reservasMusicos.repositories.entity.ReservaMusico;
import jakarta.transaction.Transactional;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface ReservaMusicoRepository extends JpaRepository<ReservaMusico, Long> {
    @Query("SELECT r FROM ReservaMusico r WHERE r.musicianId = ?1")
    List<ReservaMusico> findByIdMusico(Long musicianId);
}
