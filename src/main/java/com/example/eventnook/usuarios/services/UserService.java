package com.example.eventnook.usuarios.services;

import java.util.List;

import com.example.eventnook.usuarios.models.dto.RegistrationFormDTO;
import com.example.eventnook.usuarios.models.dto.UserDTO;
import com.example.eventnook.usuarios.models.dto.UserPatchDTO;

public interface UserService {
    List<UserDTO> findAll();
    UserDTO create(RegistrationFormDTO registrationFormDTO);
    UserDTO findById(Long id);
    UserDTO update(UserDTO userDTO);
    UserDTO updatePartial(UserPatchDTO userPatchDTO);
    boolean delete(Long id);
   // List<Event> findEventsByUserId(Long id);
}
