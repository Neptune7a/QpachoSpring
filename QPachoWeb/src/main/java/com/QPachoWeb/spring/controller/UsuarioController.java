package com.QPachoWeb.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.QPachoWeb.spring.entity.Noticia;
import com.QPachoWeb.spring.entity.Usuario;
import com.QPachoWeb.spring.repository.NoticiaRepository;
import com.QPachoWeb.spring.repository.UsuarioRepository;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
public class UsuarioController {
	@Autowired
	UsuarioRepository usuarioRepository;
	
	@GetMapping
	public List<Usuario> getNoticiaAll(){
		return usuarioRepository.findAll();
	}
	
}
