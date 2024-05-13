package com.example.eventnook.eventos.repositories.dao;

import com.example.eventnook.eventos.repositories.entities.Event;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface EventRepository extends JpaRepository<Event, Long> {

}
