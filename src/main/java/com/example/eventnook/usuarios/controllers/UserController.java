package com.example.eventnook.usuarios.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.eventnook.usuarios.models.dto.RegistrationFormDTO;
import com.example.eventnook.usuarios.models.dto.UserDTO;
import com.example.eventnook.usuarios.models.dto.UserPatchDTO;
import com.example.eventnook.usuarios.services.UserService;

import jakarta.validation.Valid;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/api/v1")
public class UserController {
    
    @Autowired
    private UserService userService;

    @GetMapping("/users")
     public ResponseEntity<List<UserDTO>> findAll() {
        return ResponseEntity.status(HttpStatus.OK).body(userService.findAll());
    }
    
    @PostMapping("/users")
     public ResponseEntity<UserDTO> create(@Valid @RequestBody RegistrationFormDTO registrationFormDTO) {
        return ResponseEntity.status(HttpStatus.CREATED).body(userService.create(registrationFormDTO));
    }

    @GetMapping("/user/{id}")
     public ResponseEntity<UserDTO> findById(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(userService.findById(id));
    }

    @PutMapping("/user/{id}")
     public ResponseEntity<UserDTO> update(@PathVariable Long id, @Valid @RequestBody UserDTO userDTO) {
        userDTO.setId(id);
        return ResponseEntity.status(HttpStatus.OK).body(userService.update(userDTO));
    }

     @PatchMapping("/user/{id}")
    public ResponseEntity<UserDTO> updatePartial(@PathVariable Long id, @Valid @RequestBody UserPatchDTO userPatchDTO) {
        userPatchDTO.setId(id);
        return ResponseEntity.status(HttpStatus.OK).body(userService.updatePartial(userPatchDTO));
    }

    @DeleteMapping("/user/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        userService.delete(id);
        return ResponseEntity.status(HttpStatus.OK).build();
    }

    /*@GetMapping("/user/{id}/events")
    public ResponseEntity<List<Event>> findEventsByUserId(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(eventService.findEventsByUserId(id));
    }*/
}
