package com.mateusjose98.distribuicao.entity;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;
    private String nome;
    @ManyToOne
    @JoinColumn(name = "unidade_tratamento_id")
    private UnidadeTratamento unidadeTratamento;
    @Column(name = "porcentagem_maxima_diaria")
    private Double porcentagemMaximaDiaria;
}
