package com.example.eventnook.musicos.exceptions;
import com.example.eventnook.shared.exceptions.DataNotFoundException;

public class MusicianNotFoundException extends DataNotFoundException {
    public MusicianNotFoundException(Long id) {
        super("El músico con id " + id + " no existe");
    }
}
