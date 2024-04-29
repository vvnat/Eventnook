package com.example.eventnook.usuarios.models.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;
import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class UserPatchDTO {
    private Long id;

    @Size(min = 3, max = 20, message = "El nombre de usuario debe tener entre 3 y 20 caracteres")
    private String username;

    @Size(min = 3, max = 20, message = "El nombre debe tener entre 3 y 20 caracteres")
    private String name;

    @Size(min = 3, max = 20, message = "El apellido debe tener entre 3 y 20 caracteres")
    private String lastName;

    @Email(message = "El email debe ser válido")
    private String email;

    @Size(min = 8, message = "La contraseña debe tener al menos 8 caracteres")
    private String password;

    private String image;

}
