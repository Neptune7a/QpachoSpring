package com.QPachoWeb.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.QPachoWeb.spring.entity.Rol;
import com.QPachoWeb.spring.entity.Usuario;
import com.QPachoWeb.spring.repository.RolRepository;
import com.QPachoWeb.spring.repository.UsuarioRepository;

@RestController
@RequestMapping("/roles")
public class RolController {
	@Autowired
	RolRepository rolRepository;
	
	@GetMapping
	public List<RolRepository> getNoticiaAll(){
		return rolRepository.findAll();
	}
	
}
