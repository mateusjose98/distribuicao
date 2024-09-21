package com.mateusjose98.distribuicao.service;

import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import com.mateusjose98.distribuicao.repository.DistribuicaoRepository;
import com.mateusjose98.distribuicao.repository.UnidadeTratamentoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class UnidadeTratamentoService {

    private static final Double CEM = 100.0;
    @Autowired
    private UnidadeTratamentoRepository unidadeTratamentoRepository;
    @Autowired
    private DistribuicaoRepository distribuicaoRepository;

    public List<UnidadeTratamento> listarUnidades() {
        return unidadeTratamentoRepository.findAll();
    }

    public UnidadeTratamento buscarUnidade(Long id) {
        return unidadeTratamentoRepository.findById(id).orElse(null);
    }

    public UnidadeTratamento salvarUnidade(UnidadeTratamento unidadeTratamento) {
        return unidadeTratamentoRepository.save(unidadeTratamento);
    }

    public UnidadeTratamento selecionarProximaUnidadeDoDia() {
        UnidadeTratamento unidadeSelecionada = null;
        LocalDate hoje = LocalDate.now();
        List<UnidadeTratamento> unidades = this.listarUnidades();
        long quantidadeRecebidaHojePorTodos = distribuicaoRepository.countByDataDistribuicao(hoje);

        if(quantidadeRecebidaHojePorTodos == 0){
            return this.buscarUnidade(1L);
        }

        Double maiorDefasagem = Double.NEGATIVE_INFINITY;
        for(UnidadeTratamento unidadeCandidata : unidades) {

            Double porcentagemMaximaDiariaEsperada = unidadeCandidata.getPorcentagemMaximaDiaria() / CEM;
            Double qteTeoricaDaUnidade = quantidadeRecebidaHojePorTodos * porcentagemMaximaDiariaEsperada;

            var qteRealJaRecebidaDaUnidade = distribuicaoRepository.countByUnidadeTratamentoAndDataDistribuicao(unidadeCandidata, hoje);

            Double defasagem = qteTeoricaDaUnidade - qteRealJaRecebidaDaUnidade;

            if(defasagem > maiorDefasagem){
                unidadeSelecionada = unidadeCandidata;
                maiorDefasagem = defasagem;
            }

        }
        return unidadeSelecionada;
    }
}
