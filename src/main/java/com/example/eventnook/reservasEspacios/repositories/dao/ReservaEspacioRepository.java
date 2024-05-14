package com.example.eventnook.reservasEspacios.repositories.dao;

import com.example.eventnook.reservasEspacios.repositories.entities.ReservaEspacio;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Transactional
@Repository
public interface ReservaEspacioRepository  extends JpaRepository<ReservaEspacio, Long> {

}
