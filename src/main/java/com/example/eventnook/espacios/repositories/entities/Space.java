package com.example.eventnook.espacios.repositories.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "espacios")
public class Space {

    private String[] eventTypes = { "boda", "cena_empresa", "congreso", "concierto" };

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String image;

    private String description;

    private int capacity;

    private float price;

    private boolean openSpace;

    private boolean enclosedSpace;

    private int eventType;

    private int contactNumber;

    private String address;
}
