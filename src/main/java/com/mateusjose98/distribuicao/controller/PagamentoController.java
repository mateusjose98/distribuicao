package com.mateusjose98.distribuicao.controller;

import com.mateusjose98.distribuicao.service.PagamentoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/pagamento")
public class PagamentoController {

    @Autowired
    private PagamentoService pagamentoService;

    @GetMapping("{idPacote}")
    public String pagar(@PathVariable Long idPacote) {
        pagamentoService.pagar(idPacote);
        return "Pagamento realizado com sucesso";
    }

}
