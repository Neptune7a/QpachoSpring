package com.QPachoWeb.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.QPachoWeb.spring.entity.Noticia;
import com.QPachoWeb.spring.repository.NoticiaRepository;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
@RequestMapping("/noticias")
public class NoticiaController {
	@Autowired
	NoticiaRepository noticiaRepository;
	
	@GetMapping
	public List<Noticia> getNoticiaAll(){
		return noticiaRepository.findAll();
	}
	
	@PostMapping
	public Noticia postNoticia(@RequestBody Noticia noticia) {
		
		noticiaRepository.save(noticia);
		
		return noticia;
		

	}
}
