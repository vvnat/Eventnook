package com.example.eventnook.restaurantes.repositories.dao;

import com.example.eventnook.restaurantes.repositories.entities.Restaurant;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
}