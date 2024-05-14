package com.example.eventnook.reservasCaterings.repositories.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Data
@Entity
@Table(name = "reservas_caterings")
public class ReservaCatering {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long cateringId;

    private Date startDate;

    private Date endDate;
}
