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

    private Integer eventType;

    private int contactNumber;

    private String address;
}
