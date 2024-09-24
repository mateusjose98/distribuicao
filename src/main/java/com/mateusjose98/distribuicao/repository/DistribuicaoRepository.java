package com.mateusjose98.distribuicao.repository;

import com.mateusjose98.distribuicao.entity.Distribuicao;
import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import com.mateusjose98.distribuicao.entity.Usuario;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.beans.JavaBean;
import java.time.LocalDate;
import java.time.LocalDateTime;

public interface DistribuicaoRepository extends JpaRepository<Distribuicao, Long> {

    @Query("""
        SELECT COUNT(d) FROM Distribuicao d WHERE d.usuario = ?1 AND FUNCTION('DATE', d.dataEntrada) = ?2
    """)
    long countByUsuarioAndDataDistribuicao(Usuario usuario, LocalDate localDate);
    long countByUsuario(Usuario usuario);
    @Query("""
        SELECT COUNT(d) FROM Distribuicao d WHERE FUNCTION('DATE', d.dataEntrada) = ?1
    """)
    long countByDataDistribuicao(LocalDate localDate);

}
