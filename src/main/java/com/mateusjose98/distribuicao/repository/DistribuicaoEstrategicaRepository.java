package com.mateusjose98.distribuicao.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mateusjose98.distribuicao.entity.Cliente;
import com.mateusjose98.distribuicao.entity.DistribuicaoClienteEstrategico;

public interface DistribuicaoEstrategicaRepository extends JpaRepository<DistribuicaoClienteEstrategico, Long>{

	Optional<DistribuicaoClienteEstrategico> findByCliente(Cliente cliente);

}
