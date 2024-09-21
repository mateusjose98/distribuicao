package com.mateusjose98.distribuicao.repository;

import com.mateusjose98.distribuicao.entity.Distribuicao;
import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.beans.JavaBean;
import java.time.LocalDate;
import java.time.LocalDateTime;

public interface DistribuicaoRepository extends JpaRepository<Distribuicao, Long> {

    @Query("""
        SELECT COUNT(d) FROM Distribuicao d WHERE d.unidadeTratamento = ?1 AND FUNCTION('DATE', d.dataDistribuicao) = ?2
    """)
    long countByUnidadeTratamentoAndDataDistribuicao(UnidadeTratamento unidadeTratamento, LocalDate localDate);
    long countByUnidadeTratamento(UnidadeTratamento unidadeTratamento);
    @Query("""
        SELECT COUNT(d) FROM Distribuicao d WHERE FUNCTION('DATE', d.dataDistribuicao) = ?1
    """)
    long countByDataDistribuicao(LocalDate localDate);

}
