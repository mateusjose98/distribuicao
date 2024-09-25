package com.mateusjose98.distribuicao;

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
        int numeroPacotes = 27;
        for (int i = 1; i <= numeroPacotes; i++) {
        	System.out.println(i);
        	 String url = "http://localhost:8080/pagamento/" + i;
            restTemplate.getForObject(url, String.class);
//            Thread.sleep(1000L);
         
        }
    }
}
