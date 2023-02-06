package com.example.demo.batch.mission;

import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.StepExecutionListener;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class missionCheckTasklet implements Tasklet, StepExecutionListener{

	@Override
	public void beforeStep(StepExecution stepExecution) {
		log.info("**** missionChk beforeStep");
	}

	@Override
	public ExitStatus afterStep(StepExecution stepExecution) {
		log.info("**** missionChk afterStep");
		return null;
	}

	@Override
	public RepeatStatus execute(StepContribution contribution, ChunkContext chunkContext) throws Exception {
		log.info("**** missionChk execute");
		return null;
	}

}
