package com.mateusjose98.distribuicao.service;

import com.mateusjose98.distribuicao.entity.Distribuicao;
import com.mateusjose98.distribuicao.entity.Pacote;
import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import com.mateusjose98.distribuicao.repository.DistrbuicaoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DistribuicaoService {

    @Autowired
    private UnidadeTratamentoService unidadeTratamentoService;
    @Autowired
    private DistrbuicaoRepository distrbuicaoRepository;

    public void distribuirNovoPacote(Pacote pacote) {
        // selecionar a unidade correta de acordo com a porcentagem diária
        UnidadeTratamento unidadeSelecionada = unidadeTratamentoService.selecionarProximaUnidadeDoDia();
        System.out.println("Unidade selecionada: " + unidadeSelecionada.getNome());
        // distribuir pacote para unidadeTratamento
        Distribuicao novaDistribuicao = new Distribuicao();
        novaDistribuicao.setPacote(pacote);
        novaDistribuicao.setUnidadeTratamento(unidadeSelecionada);

        // salvar distribuicao
        distrbuicaoRepository.save(novaDistribuicao);

    }
}
