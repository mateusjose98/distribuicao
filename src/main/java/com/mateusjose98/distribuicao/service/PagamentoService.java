package com.mateusjose98.distribuicao.service;

import com.mateusjose98.distribuicao.entity.Pacote;
import com.mateusjose98.distribuicao.entity.Pagamento;
import com.mateusjose98.distribuicao.repository.PacoteRepository;
import com.mateusjose98.distribuicao.repository.PagamentoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Optional;
import java.util.Random;

@Service
@Transactional(readOnly = true)
public class PagamentoService {

    @Autowired
    private PacoteRepository pacoteRepository;
    @Autowired
    private PagamentoRepository pagamentoRepository;
    @Autowired
    private DistribuicaoService distribuicaoService;

    @Transactional
    public void pagar(Long idPacote) {

        Optional<Pacote> pacote = pacoteRepository.findById(idPacote);

        if (pacote.isPresent()) {

            Pagamento pagamento = new Pagamento();
            pagamento.setValor(BigDecimal.valueOf(new Random().nextDouble(1000) * 700));
            pagamentoRepository.save(pagamento);
            pacote.get().setPagamento(pagamento);
            pacoteRepository.save(pacote.get());

            distribuicaoService.distribuirNovoPacote(pacote.get());
        }

    }

}
