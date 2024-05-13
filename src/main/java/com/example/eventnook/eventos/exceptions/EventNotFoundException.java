package com.example.eventnook.eventos.exceptions;

import com.example.eventnook.shared.exceptions.DataNotFoundException;

public class EventNotFoundException extends DataNotFoundException {
    public EventNotFoundException(Long id) {
        super("El evento con id " + id + " no existe");
    }
}
