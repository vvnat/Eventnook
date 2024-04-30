package com.example.eventnook.espacios.exceptions;

import com.example.eventnook.shared.exceptions.DataNotFoundException;

public class SpaceNotFoundException extends DataNotFoundException {
    public SpaceNotFoundException(Long id) {
        super("El espacio con id " + id + " no existe");
    }
}
