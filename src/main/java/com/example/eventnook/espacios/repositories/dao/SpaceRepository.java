package com.example.eventnook.espacios.repositories.dao;

import javax.swing.event.DocumentEvent.EventType;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.eventnook.espacios.repositories.entities.Space;

import jakarta.transaction.Transactional;

@Transactional
@Repository
public interface SpaceRepository extends JpaRepository<Space, Long>{
    @Query("SELECT s FROM Space s WHERE s.eventType = ?1")
    List<Space> findSpaceByEventType(EventType eventType);
}
