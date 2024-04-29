package com.example.eventnook.usuarios.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.eventnook.usuarios.models.dto.LoginFormDTO;
import com.example.eventnook.usuarios.models.dto.UserDTO;
import com.example.eventnook.usuarios.repositories.dao.UserRepository;
import com.example.eventnook.usuarios.services.AuthenticationService;

import com.example.eventnook.usuarios.repositories.entities.User;

@Service
public class AuthenticationServiceImpl implements AuthenticationService{

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDTO authenticate(LoginFormDTO loginFormDTO) {
        User user = userRepository.findByUsernameAndPassword(loginFormDTO.getUsername(), loginFormDTO.getPassword());
       UserDTO userDTO = UserDTO.builder()
               .id(user.getId())
               .username(user.getUsername())
               .name(user.getName())
               .lastName(user.getLastName())
               .email(user.getEmail())
               .image(user.getImage())
               .build();

         return userDTO;
    }
    
    
}
