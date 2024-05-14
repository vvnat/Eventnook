package com.example.eventnook.caterings.repositories.dao;

import com.example.eventnook.caterings.repositories.entities.Catering;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Transactional
@Repository
public interface CateringRepository extends JpaRepository<Catering, Long> {
    @Query("SELECT c FROM Catering c WHERE c.eventType = ?1")
    List<Catering> findCateringByEventType(Integer eventType);

}
