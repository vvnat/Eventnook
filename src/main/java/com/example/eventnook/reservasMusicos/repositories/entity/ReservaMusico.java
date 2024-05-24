package com.example.eventnook.reservasMusicos.repositories.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "reservas_musicos")
public class ReservaMusico {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long musicianId;

    private LocalDateTime startDate;

    private LocalDateTime endDate;
}
