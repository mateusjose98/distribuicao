package com.mateusjose98.distribuicao.entity;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Distribuicao {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;
    private LocalDateTime dataEntrada;
    @ManyToOne
    @JoinColumn
    private Usuario usuario;
    @ManyToOne
    @JoinColumn
    private Pacote pacote;

    @PrePersist
    public void prePersist() {
        dataEntrada = LocalDateTime.now();
    }


}
