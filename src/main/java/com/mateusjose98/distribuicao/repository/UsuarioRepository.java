package com.mateusjose98.distribuicao.repository;

import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import com.mateusjose98.distribuicao.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    List<Usuario> findByUnidadeTratamento(UnidadeTratamento unidade);
}
