package com.example.eventnook.reservasRestaurantes.repositories.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;


@Data
@Entity
@Table(name = "reservas_restaurantes")
public class ReservaRestaurante {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long restaurantId;

    private LocalDateTime startDate;

    private LocalDateTime endDate;
}
