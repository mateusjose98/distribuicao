package com.mateusjose98.distribuicao.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Cliente {
	
	   @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @EqualsAndHashCode.Include
	    private Long id;
	    private String nome;
	    private String cpf;

}
