package com.mateusjose98.distribuicao.controller;

import lombok.Getter;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/distribuicao")
public class DistribuicaoController {


    @GetMapping
    public String getDistribuicao() {
        return "Distribuicao";
    }

}
