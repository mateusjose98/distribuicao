package com.mateusjose98.distribuicao.repository;

import com.mateusjose98.distribuicao.entity.Pacote;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PacoteRepository extends JpaRepository<Pacote, Long> {
}
