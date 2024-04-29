package com.example.eventnook.usuarios.repositories.entities;

import java.security.Timestamp;

import jakarta.persistence.*;
import lombok.Data;
import lombok.experimental.Accessors;


@Data
@Accessors(chain = true)
@Entity
@Table(name = "usuarios")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;

    private String name;

    private String lastName;

    private String email;

    private String password;

    private String repeatPassword;

    private String image;

    private Timestamp createdAt;

}
