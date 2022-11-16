package com.QPachoWeb.spring.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
public class Noticia implements Serializable {

	@Id
	@Column(name = "id")
	private Integer id;
	private String titulo;
	private String contenido;
	private Integer categoria;
	@Temporal(TemporalType.TIMESTAMP)
	private Date fechahora;
	
	@PrePersist
	public void prePersist() {
		this.fechahora=new Date();
	}
}