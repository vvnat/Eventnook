package com.example.eventnook.usuarios.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.eventnook.usuarios.models.dto.LoginFormDTO;
import com.example.eventnook.usuarios.models.dto.UserDTO;
import com.example.eventnook.usuarios.services.AuthenticationService;

@RestController
@RequestMapping("/api/v1")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class AuthenticationController {
    @Autowired
    private AuthenticationService authenticationService;

    @PostMapping("/authenticate")
    public ResponseEntity<UserDTO> authenticate(@RequestBody LoginFormDTO loginFormDTO){
        UserDTO authenticated = authenticationService.authenticate(loginFormDTO);

        if (authenticated != null){
            return ResponseEntity.status(HttpStatus.OK).body(authenticated);
        }else{
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(authenticated);
        }
    }
}
