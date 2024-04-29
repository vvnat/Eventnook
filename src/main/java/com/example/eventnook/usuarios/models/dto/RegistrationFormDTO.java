package com.example.eventnook.usuarios.models.dto;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import jakarta.validation.constraints.Email;

import lombok.Data;

@Data
public class RegistrationFormDTO {
    @NotNull(message = "El nombre de usuario no puede estar vacío")
    @Size(min =3, max = 20, message = "El nombre de usuario debe tener entre 3 y 20 caracteres")
    private String username;

    @NotNull(message = "El nombre no puede estar vacío")
    @Size(min = 3, max = 20, message = "El nombre debe tener entre 3 y 20 caracteres")
    private String name;

    @NotNull(message = "El apellido no puede estar vacío")
    @Size(min = 3, max = 20, message = "El apellido debe tener entre 3 y 20 caracteres")
    private String lastName;

    @NotNull(message = "El email no puede estar vacío")
    @Email(message = "El email no es válido")
    private String email;

    @Size(min = 8, message = "La contraseña debe tener al menos 8 caracteres")
    @NotNull(message = "La contraseña no puede estar vacía")
    private String password;

    private String image;
}
