package com.example.eventnook.usuarios.repositories.dao;

import org.springframework.stereotype.Repository;

import com.example.eventnook.usuarios.repositories.entities.User;

import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

@Transactional
@Repository
public interface UserRepository extends JpaRepository<User, Long>{
    @Query("SELECT u FROM User u WHERE u.username = ?1 AND u.password = ?2")
    User findByUsernameAndPassword(String username, String password);
}
