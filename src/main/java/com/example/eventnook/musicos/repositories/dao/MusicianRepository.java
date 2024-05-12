package com.example.eventnook.musicos.repositories.dao;

import com.example.eventnook.musicos.repositories.entities.Musician;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Transactional
@Repository
public interface MusicianRepository extends JpaRepository<Musician, Long> {
    @Query("SELECT m FROM Musician m WHERE m.eventType = ?1")
    List<Musician> findMusicianByEventType(Integer eventType);
}
