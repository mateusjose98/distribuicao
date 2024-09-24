package com.mateusjose98.distribuicao.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mateusjose98.distribuicao.entity.Pacote;
import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import com.mateusjose98.distribuicao.repository.DistribuicaoEstrategicaRepository;
import com.mateusjose98.distribuicao.repository.DistribuicaoRepository;
import com.mateusjose98.distribuicao.repository.UnidadeTratamentoRepository;

@Service
public class UnidadeTratamentoService {

    private static final Double CEM = 100.0;
    @Autowired
    private UnidadeTratamentoRepository unidadeTratamentoRepository;
    @Autowired
    private DistribuicaoRepository distribuicaoRepository;
    @Autowired
    private DistribuicaoEstrategicaRepository distribuicaoEstrategicaRepository;


    public UnidadeTratamento selecionarProximaUnidadeDoDia(Pacote pacote) {

        var distribuicaoEstrategica = distribuicaoEstrategicaRepository.findByCliente(pacote.getCliente());
        
        if(distribuicaoEstrategica.isPresent()) {
        	return distribuicaoEstrategica.get().getUnidadeTratamento();
        }
       
        return selecionaPorMaiorDefasagem();
    }
    
    private UnidadeTratamento selecionaPorMaiorDefasagem() {
    	        
    	long quantidadeRecebidaHojePorTodos = distribuicaoRepository.countByDataDistribuicao(LocalDate.now());
        
        UnidadeTratamento unidadeSelecionada = null;
        if(quantidadeRecebidaHojePorTodos == 0){ // escolhemos alguma por default
            return this.buscarUnidade(1L);
        }

    	List<UnidadeTratamento> unidades = this.listarUnidades();    
        Double maiorDefasagem = Double.NEGATIVE_INFINITY;
        for(UnidadeTratamento unidadeCandidata : unidades) {

            Double porcentagemMaximaDiariaEsperada = unidadeCandidata.getPorcentagemMaximaDiaria() / CEM;
            Double qteTeoricaDaUnidade = quantidadeRecebidaHojePorTodos * porcentagemMaximaDiariaEsperada;

            var qteRealJaRecebidaDaUnidade = distribuicaoRepository.countByUsuarioAndDataDistribuicao(unidadeCandidata.getUsuarioImpessoal(), LocalDate.now());

            Double defasagem = qteTeoricaDaUnidade - qteRealJaRecebidaDaUnidade;

            if(defasagem > maiorDefasagem){
                unidadeSelecionada = unidadeCandidata;
                maiorDefasagem = defasagem;
            }

        }
        return unidadeSelecionada;
    }
    
    public List<UnidadeTratamento> listarUnidades() {
        return unidadeTratamentoRepository.findAll();
    }

    public UnidadeTratamento buscarUnidade(Long id) {
        return unidadeTratamentoRepository.findById(id).orElse(null);
    }

    public UnidadeTratamento salvarUnidade(UnidadeTratamento unidadeTratamento) {
        return unidadeTratamentoRepository.save(unidadeTratamento);
    }
}
