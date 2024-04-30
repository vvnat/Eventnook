package com.example.eventnook.usuarios.models.dto;

import java.io.Serializable;
import java.sql.Timestamp;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class UserDTO implements Serializable{
    private Long id;

    @Size(min = 3, max = 20, message = "El nombre de usuario debe tener entre 3 y 20 caracteres")
    @NotNull(message = "El nombre de usuario no puede estar vacío")
    private String username;

    @Size(min = 3, max = 20, message = "El nombre debe tener entre 3 y 20 caracteres")
    @NotNull(message = "El nombre no puede estar vacío")
    private String name;

    @Size(min = 3, max = 20, message = "El apellido debe tener entre 3 y 20 caracteres")
    @NotNull(message = "El apellido no puede estar vacío")
    private String lastName;

    @Email(message = "El email no es válido")
    @NotNull(message = "El email no puede estar vacío")
    private String email;

    @Size(min = 8, message = "La contraseña debe tener al menos 8 caracteres")
    @NotNull(message = "La contraseña no puede estar vacía")
    private String password;

    private String image;

    private Timestamp createdAt;
}
