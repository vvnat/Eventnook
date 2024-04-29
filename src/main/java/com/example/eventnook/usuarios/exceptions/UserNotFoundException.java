package com.example.eventnook.usuarios.exceptions;
import com.example.eventnook.shared.exceptions.DataNotFoundException;

public class UserNotFoundException extends DataNotFoundException {
    public UserNotFoundException(Long id) {
        super("El usuario con id " + id + " no existe");
    }
}
