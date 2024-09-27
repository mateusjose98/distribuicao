package com.mateusjose98.distribuicao.service;

import java.time.LocalDate;
import java.util.List;

import com.mateusjose98.distribuicao.entity.Usuario;
import com.mateusjose98.distribuicao.repository.UsuarioRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
    @Autowired
    private UsuarioRepository usuarioRepository;
    private final Logger log = LoggerFactory.getLogger(UnidadeTratamentoService.class);


    public UnidadeTratamento selecionarProximaUnidadeDoDia(Pacote pacote) {

        var distribuicaoEstrategica = distribuicaoEstrategicaRepository.findByCliente(pacote.getCliente());  
        if(distribuicaoEstrategica.isPresent()) {
        	log.info("Pacote de um cliente Estratégico {}", distribuicaoEstrategica.get().getUnidadeTratamento());
        	return distribuicaoEstrategica.get().getUnidadeTratamento();
        }
       
        return selecionaPorMaiorDefasagem();
    }
    
    private UnidadeTratamento selecionaPorMaiorDefasagem() {
    	        
    	long quantidadeRecebidaHojePorTodos = distribuicaoRepository.countByDataDistribuicao(LocalDate.now());
        
        UnidadeTratamento unidadeSelecionada = null;
        if(quantidadeRecebidaHojePorTodos == 0){ 
        	log.info("Quantidade total 0, unidade default 1L");
            return unidadeTratamentoRepository.findById(1L).orElse(null);
        }

    	List<UnidadeTratamento> unidades = unidadeTratamentoRepository.findAll();    
    	log.info("{}", unidades);
        Double maiorDefasagem = Double.NEGATIVE_INFINITY;
        for(UnidadeTratamento unidadeCandidata : unidades) {
        
            Double defasagemDaUnidade = calcularDefasagemUnidade(unidadeCandidata, quantidadeRecebidaHojePorTodos);
            
            log.info("Tentativa para unidade {} defasagem da unidade {} | maior defasagem {}", unidadeCandidata.getNome(), defasagemDaUnidade, maiorDefasagem);
            
            if(defasagemDaUnidade > maiorDefasagem){
                unidadeSelecionada = unidadeCandidata;
                maiorDefasagem = defasagemDaUnidade;
            }

        }
        log.info("Unidade selecionada {}", unidadeSelecionada.getNome());
        return unidadeSelecionada;
    }


    private Double calcularDefasagemUnidade(UnidadeTratamento unidadeCandidata, long quantidadeRecebidaHojePorTodos) {
        // Calcula a capacidade teórica da unidade com base na porcentagem máxima diária
        Double porcentagemMaximaDiariaEsperada = unidadeCandidata.getPorcentagemMaximaDiaria() / 100.0;
        log.info("Tentativa para unidade {}, porcentagem diária {}", unidadeCandidata.getNome(), unidadeCandidata.getPorcentagemMaximaDiaria());
        Double qteTeoricaDaUnidade = quantidadeRecebidaHojePorTodos * porcentagemMaximaDiariaEsperada;

        // Calcula a quantidade real já recebida na unidade com base nas atribuições aos usuários
        Double qteRealJaRecebidaDaUnidade = 0.0;
        List<Usuario> usuariosDaUnidade = usuarioRepository.findByUnidadeTratamento(unidadeCandidata);
        for (Usuario usuario : usuariosDaUnidade) {
            long pacotesRecebidosPeloUsuario = distribuicaoRepository.countByUsuarioAndDataDistribuicao(usuario, LocalDate.now());
            qteRealJaRecebidaDaUnidade += pacotesRecebidosPeloUsuario;
        }

        // Calcula a defasagem considerando a capacidade da unidade menos os pacotes já distribuídos aos usuários
        Double defasagem = qteTeoricaDaUnidade - qteRealJaRecebidaDaUnidade;
        log.info("Defasagem para unidade {}: {}", unidadeCandidata.getNome(), defasagem);
        return defasagem;
    }


}
