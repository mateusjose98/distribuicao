package com.mateusjose98.distribuicao.service;

import com.mateusjose98.distribuicao.entity.Usuario;
import com.mateusjose98.distribuicao.repository.UsuarioRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mateusjose98.distribuicao.entity.Distribuicao;
import com.mateusjose98.distribuicao.entity.Pacote;
import com.mateusjose98.distribuicao.entity.UnidadeTratamento;
import com.mateusjose98.distribuicao.repository.DistribuicaoRepository;

import java.time.LocalDate;
import java.util.List;

@Service
@Slf4j
public class DistribuicaoService {

    @Autowired
    private UnidadeTratamentoService unidadeTratamentoService;

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private DistribuicaoRepository distribuicaoRepository;

    public void distribuirNovoPacote(Pacote pacote) {

        UnidadeTratamento unidadeSelecionada = unidadeTratamentoService.selecionarProximaUnidadeDoDia(pacote);
        if (unidadeSelecionada == null) {
            log.error("Nenhuma unidade de tratamento disponível para distribuição do pacote {}", pacote.getNumeroPacote());
            throw new RuntimeException("Nenhuma unidade de tratamento disponível para distribuição.");
        }

        log.info("Unidade selecionada: {}", unidadeSelecionada.getNome());

        // Seleciona o usuário dentro da unidade com maior defasagem
        Usuario usuarioSelecionado = selecionarUsuarioParaPacote(unidadeSelecionada);
        if (usuarioSelecionado == null) {
            log.error("Nenhum usuário disponível na unidade {} para distribuir o pacote {}", unidadeSelecionada.getNome(), pacote.getNumeroPacote());
            throw new RuntimeException("Nenhum usuário disponível na unidade para distribuição.");
        }

        log.info("Usuário selecionado: {}", usuarioSelecionado.getNome());

        // Cria a nova distribuição
        Distribuicao novaDistribuicao = new Distribuicao();
        novaDistribuicao.setPacote(pacote);
        novaDistribuicao.setUsuario(usuarioSelecionado);

        // Salva a distribuição no repositório
        distribuicaoRepository.save(novaDistribuicao);

        log.info("Pacote {} distribuído para usuário {} na unidade {}", pacote.getNumeroPacote(), usuarioSelecionado.getNome(), unidadeSelecionada.getNome());
    }

    private Usuario selecionarUsuarioParaPacote(UnidadeTratamento unidade) {
        List<Usuario> usuarios = usuarioRepository.findByUnidadeTratamento(unidade);
        Usuario usuarioSelecionado = null;
        Double maiorDefasagemUsuario = Double.NEGATIVE_INFINITY;

        for (Usuario usuario : usuarios) {
            Double porcentagemMaximaUsuario = usuario.getPorcentagemMaximaDiaria() / 100.0;
            long quantidadeRecebidaHojePorTodos = distribuicaoRepository.countByDataDistribuicao(LocalDate.now());
            Double capacidadeTeoricaUsuario = quantidadeRecebidaHojePorTodos * (unidade.getPorcentagemMaximaDiaria() / 100.0) * porcentagemMaximaUsuario;

            long pacotesRecebidosHoje = distribuicaoRepository.countByUsuarioAndDataDistribuicao(usuario, LocalDate.now());

            Double defasagemUsuario = capacidadeTeoricaUsuario - pacotesRecebidosHoje;
            log.info("Defasagem para usuário {}: {}", usuario.getNome(), defasagemUsuario);

            if (defasagemUsuario > maiorDefasagemUsuario) {
                usuarioSelecionado = usuario;
                maiorDefasagemUsuario = defasagemUsuario;
            }
        }

        if (usuarioSelecionado != null) {
            log.info("Usuário selecionado na unidade {}: {}", unidade.getNome(), usuarioSelecionado.getNome());
        } else {
            log.warn("Nenhum usuário disponível na unidade {}", unidade.getNome());
        }

        return usuarioSelecionado;
    }
}
