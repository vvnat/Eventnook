package com.example.eventnook.reservasRestaurantes.repositories.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;


@Data
@Entity
@Table(name = "reservas_restaurantes")
public class ReservaRestaurante {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long restaurantId;

    private Date startDate;

    private Date endDate;
}
