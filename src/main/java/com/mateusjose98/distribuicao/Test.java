package com.mateusjose98.distribuicao;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
@EnableScheduling
public class Test {


    @Scheduled(fixedRate = 1, timeUnit = TimeUnit.DAYS)
    public void run() throws Exception {
        RestTemplate restTemplate = new RestTemplate();
        for (int i = 0; i < 400; i++) {
        	 String url = "http://localhost:8080/pagamento/" + new Random().nextInt(5);
            String response = restTemplate.getForObject(url, String.class);
            System.out.println(response);
        }
    }
}
