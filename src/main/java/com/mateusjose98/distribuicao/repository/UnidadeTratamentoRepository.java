package com.mateusjose98.distribuicao.repository;

import com.mateusjose98.distribuicao.entity.Pacote;
import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UnidadeTratamentoRepository extends JpaRepository<UnidadeTratamento, Long> {
}
