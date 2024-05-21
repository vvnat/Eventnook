package com.example.eventnook.eventos.repositories.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Data
@Entity
@Table(name = "eventos")
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer eventType;

    private int creatorId;

    private Date startDate;

    private Date endDate;

    private Integer spaceId;

    private Integer restaurantId;

    private Integer cateringId;

    private Integer musicianId;

    private boolean open_bar;

    private int guestsNumber;

    private boolean photographer;
}
