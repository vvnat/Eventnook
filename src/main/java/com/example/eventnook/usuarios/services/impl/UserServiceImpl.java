package com.example.eventnook.usuarios.services.impl;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.eventnook.usuarios.repositories.entities.User;
import com.example.eventnook.usuarios.exceptions.UserNotFoundException;
import com.example.eventnook.usuarios.models.dto.RegistrationFormDTO;
import com.example.eventnook.usuarios.models.dto.UserDTO;
import com.example.eventnook.usuarios.models.dto.UserPatchDTO;
//import com.example.eventnook.usuarios.models.mappers.UserDTOMapper;
import com.example.eventnook.usuarios.repositories.dao.UserRepository;
import com.example.eventnook.usuarios.services.UserService;

@Service
public class UserServiceImpl implements UserService{
    
    @Autowired
    private UserRepository userRepository;

   /* @Autowired
    private EventService eventService;


     @Autowired
     private UserDTOMapper userDTOMapper;
          */

     @Override
     public List<UserDTO> findAll() {
         return userRepository.findAll().stream().map(
                 user -> UserDTO.builder()
                         .id(user.getId())
                         .username(user.getUsername())
                         .name(user.getName())
                         .lastName(user.getLastName())
                         .email(user.getEmail())
                         .image(user.getImage())
                        // .createdAt(new Timestamp(user.getCreatedAt().getTime()))
                         .build()
         ).toList();
     }
     

    @Override
    public UserDTO create(RegistrationFormDTO registrationFormDTO) {
        User user = new User();
        user.setUsername(registrationFormDTO.getUsername());
        user.setName(registrationFormDTO.getName());
        user.setLastName(registrationFormDTO.getLastName());
        user.setEmail(registrationFormDTO.getEmail());
        user.setPassword(registrationFormDTO.getPassword());
        user.setImage(registrationFormDTO.getImage());

        System.out.println(registrationFormDTO.getImage());
        System.out.println(user.getImage());
        user = userRepository.save(user);

        return UserDTO.builder()
                .id(user.getId())
                .username(user.getUsername())
                .name(user.getName())
                .lastName(user.getLastName())
                .email(user.getEmail())
                .image(user.getImage())
                .build();
    }

    @Override
    public UserDTO findById(Long id) {
        User user = userRepository.findById(id)
                .orElseThrow(() -> new UserNotFoundException(id));
        
        return UserDTO.builder()
                .id(user.getId())
                .username(user.getUsername())
                .name(user.getName())
                .lastName(user.getLastName())
                .email(user.getEmail())
                .image(user.getImage())
   //             .createdAt(user.getCreatedAt())
                .build();
    }
    

    @Override
    public UserDTO update(UserDTO userDTO) {
        if (findById(userDTO.getId()) == null) {
            throw new UserNotFoundException(userDTO.getId());
        }

        User user = new User();
        user.setId(userDTO.getId());
        user.setUsername(userDTO.getUsername());
        user.setName(userDTO.getName());
        user.setLastName(userDTO.getLastName());
        user.setEmail(userDTO.getEmail());
        user.setPassword(userDTO.getPassword());
        user.setImage(userDTO.getImage());

        System.out.println(userDTO.getImage());
        System.out.println(user.getImage());
        user = userRepository.save(user);

        return findById(user.getId());
    }
    @Override
    public UserDTO updatePartial(UserPatchDTO userPatchDTO) {
        System.out.printf("id: %d%n", userPatchDTO.getId());
        User user = userRepository.findById(userPatchDTO.getId()).orElseThrow(() -> new UserNotFoundException(userPatchDTO.getId()));

        if (userPatchDTO.getUsername() != null) {
            user.setUsername(userPatchDTO.getUsername());
        }

        if (userPatchDTO.getName() != null) {
            user.setName(userPatchDTO.getName());
        }

        if (userPatchDTO.getLastName() != null) {
            user.setLastName(userPatchDTO.getLastName());
        }

        if (userPatchDTO.getEmail() != null) {
            user.setEmail(userPatchDTO.getEmail());
        }

        if (userPatchDTO.getPassword() != null) {
            user.setPassword(userPatchDTO.getPassword());
        }

        if (userPatchDTO.getImage() != null) {
            user.setImage(userPatchDTO.getImage());
        }

        user = userRepository.save(user);

        return UserDTO.builder()
                .id(user.getId())
                .username(user.getUsername())
                .name(user.getName())
                .lastName(user.getLastName())
                .email(user.getEmail())
                .image(user.getImage())
                .build();
    }

    @Override
    public boolean delete(Long id) {
        if (findById(id) == null) {
            throw new UserNotFoundException(id);
        }

        userRepository.deleteById(id);
        return true;
    }

     
}
