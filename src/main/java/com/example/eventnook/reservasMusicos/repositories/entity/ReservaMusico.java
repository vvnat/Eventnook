package com.example.eventnook.reservasMusicos.repositories.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Data
@Entity
@Table(name = "reservas_musicos")
public class ReservaMusico {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long musicianId;

    private Date startDate;

    private Date endDate;
}
