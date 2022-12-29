package com.example.demo;

import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;



@SpringBootApplication /**스프링 부트 스타터*/
@EnableScheduling /** 스케줄링 사용을 위한 어노테이션*/
@EnableBatchProcessing/**배치 사용을 위한 어노테이션*/
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
