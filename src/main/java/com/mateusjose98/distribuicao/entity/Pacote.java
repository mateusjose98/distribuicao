package com.mateusjose98.distribuicao.entity;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Pacote {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;
    private String numeroPacote;
    @ManyToOne
    @JoinColumn
    private Usuario usuario;
    @OneToOne
    @JoinColumn
    private Pagamento pagamento;

}
