package com.example.eventnook.espacios.repositories.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.eventnook.espacios.repositories.entities.Space;

import jakarta.transaction.Transactional;

@Transactional
@Repository
public interface SpaceRepository extends JpaRepository<Space, Long>{
    
}
