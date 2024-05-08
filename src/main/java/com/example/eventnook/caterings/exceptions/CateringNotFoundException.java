package com.example.eventnook.caterings.exceptions;

import com.example.eventnook.shared.exceptions.DataNotFoundException;

public class CateringNotFoundException extends DataNotFoundException {
    public CateringNotFoundException(Long id) {
        super("El catering con id " + id + " no existe");
    }
}
