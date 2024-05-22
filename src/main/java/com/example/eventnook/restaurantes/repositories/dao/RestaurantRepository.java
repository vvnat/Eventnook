package com.example.eventnook.restaurantes.repositories.dao;

import com.example.eventnook.restaurantes.repositories.entities.Restaurant;
import jakarta.transaction.Transactional;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
    @Query("SELECT r FROM Restaurant r WHERE r.capacity >= ?1")
    List<Restaurant> findByCapacity(int capacity);
}