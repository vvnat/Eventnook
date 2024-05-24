package com.example.eventnook.reservasCaterings.repositories.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "reservas_caterings")
public class ReservaCatering {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long cateringId;

    private LocalDateTime startDate;

    private LocalDateTime endDate;
}
