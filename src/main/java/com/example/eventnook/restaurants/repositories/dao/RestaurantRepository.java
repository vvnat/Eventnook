package com.example.eventnook.restaurants.repositories.dao;

import com.example.eventnook.restaurants.repositories.entities.Restaurant;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Transactional
@Repository
public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
}