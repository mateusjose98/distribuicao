package com.mateusjose98.distribuicao;

import org.springframework.boot.CommandLineRunner;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.concurrent.TimeUnit;

@Component
@EnableScheduling
public class Test {


    @Scheduled(fixedRate = 1, timeUnit = TimeUnit.DAYS)
    public void run() throws Exception {
        RestTemplate restTemplate = new RestTemplate();

        String url = "http://localhost:8080/pagamento/1";

        for (int i = 0; i < 100; i++) {
            String response = restTemplate.getForObject(url, String.class);
            System.out.println(response);
        }
    }
}
