package com.example.eventnook.usuarios.models.mappers;

import org.springframework.stereotype.Component;

import com.example.eventnook.usuarios.models.dto.UserDTO;
import com.example.eventnook.usuarios.repositories.entities.User;

@Component
public class UserDTOMapper {
    public static User toEntity(UserDTO userDTO) {
        User user = new User();
        user.setUsername(userDTO.getUsername());
        user.setName(userDTO.getName());
        user.setLastName(userDTO.getLastName());
        user.setEmail(userDTO.getEmail());
        user.setPassword(userDTO.getPassword());
        user.setImage(userDTO.getImage());
        return user;
    }
}
