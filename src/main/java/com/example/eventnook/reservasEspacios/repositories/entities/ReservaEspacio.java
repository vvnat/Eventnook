package com.example.eventnook.reservasEspacios.repositories.entities;

import jakarta.persistence.*;
import lombok.Data;

import org.joda.time.DateTime;

@Data
@Entity
@Table(name = "reservas_espacios")
public class ReservaEspacio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long spaceId;

    private DateTime startDate;

    private DateTime endDate;
}
