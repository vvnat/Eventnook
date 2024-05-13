package com.example.eventnook.eventos.repositories.dao;

import com.example.eventnook.eventos.repositories.entities.Event;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Transactional
@Repository
public interface EventRepository extends JpaRepository<Event, Long> {
    List<Event> findAllByCreatorId(Long creatorId);
}
