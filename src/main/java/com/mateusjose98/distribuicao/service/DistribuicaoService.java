package com.mateusjose98.distribuicao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mateusjose98.distribuicao.entity.Distribuicao;
import com.mateusjose98.distribuicao.entity.Pacote;
import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import com.mateusjose98.distribuicao.repository.DistribuicaoRepository;

@Service
public class DistribuicaoService {

    @Autowired
    private UnidadeTratamentoService unidadeTratamentoService;
    @Autowired
    private DistribuicaoRepository distrbuicaoRepository;

    public void distribuirNovoPacote(Pacote pacote) {

        UnidadeTratamento unidadeSelecionada = unidadeTratamentoService.selecionarProximaUnidadeDoDia(pacote);
        System.out.println("---");
        Distribuicao novaDistribuicao = new Distribuicao();
        novaDistribuicao.setPacote(pacote);
        novaDistribuicao.setUsuario(unidadeSelecionada.getUsuarioImpessoal());

        distrbuicaoRepository.save(novaDistribuicao);

    }
}
