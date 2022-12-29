package com.example.demo.batch;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.JobScope;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Configuration
@EnableBatchProcessing
@RequiredArgsConstructor
public class checkMemberConfig {
	
	@Autowired
	MemberChkTasklet memberChkTasklet;
	
	public final JobBuilderFactory jobBuilderFactory;
	public final StepBuilderFactory stepBuilderFactory;
	
	@Bean
	public Job checkMemberJob() {
		log.info("**checkMemberJob**");
		return jobBuilderFactory.get("checkMemberJob")
			.start(checkMemberStep())
	//		    .on("FAILED") // FAILED 일 경우
	//          .to(conditionalJobStep3()) // step3으로 이동한다.
	//          .on("*") // step3의 결과 관계 없이 
	//          .end() // step3으로 이동하면 Flow가 종료한다.
//          .from(conditionalJobStep1()) // step1로부터
	//          .on("*") // FAILED 외에 모든 경우
	//          .to(conditionalJobStep2()) // step2로 이동한다.
	//          .next(conditionalJobStep3()) // step2가 정상 종료되면 step3으로 이동한다.
	//          .on("*") // step3의 결과 관계 없이 
	//          .end() // step3으로 이동하면 Flow가 종료한다.
	//          .end() // Job 종료
			.build();
	}
	
	@Bean
	@JobScope
	public Step checkMemberStep() {
		log.info("**checkMemberStep**");
		return stepBuilderFactory.get("checkMemberStep")
				.tasklet(memberChkTasklet)
				.build();
	}

}
