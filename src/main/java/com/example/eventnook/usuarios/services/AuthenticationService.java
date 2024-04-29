package com.example.eventnook.usuarios.services;

import com.example.eventnook.usuarios.models.dto.LoginFormDTO;
import com.example.eventnook.usuarios.models.dto.UserDTO;

public interface AuthenticationService {
    public UserDTO authenticate(LoginFormDTO loginFormDTO);
}
