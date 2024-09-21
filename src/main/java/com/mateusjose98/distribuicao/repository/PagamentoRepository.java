package com.mateusjose98.distribuicao.repository;

import com.mateusjose98.distribuicao.entity.Pagamento;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PagamentoRepository extends JpaRepository<Pagamento, Long> {
}
