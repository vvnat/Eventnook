package com.example.eventnook.reservasEspacios.repositories.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "reservas_espacios")
public class ReservaEspacio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long spaceId;

    private LocalDateTime startDate;

    private LocalDateTime endDate;
}
