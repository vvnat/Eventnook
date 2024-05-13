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

    private String name;

    private int creatorId;

    private String description;

    private Date startDate;

    private Date endDate;

    private int SpaceId;

    private int RestaurantId;

    private int CateringId;

    private int MusicianId;

    private boolean open_bar;

    private int guestsNumber;
}
