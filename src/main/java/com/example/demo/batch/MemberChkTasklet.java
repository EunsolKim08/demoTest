package com.example.demo.batch;

import java.util.List;

import org.springframework.batch.core.ExitStatus;
import org.springframework.batch.core.StepContribution;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.StepExecutionListener;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.bd.mapper.BdPointManageMapper;
import com.example.demo.bd.model.pointVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class MemberChkTasklet implements Tasklet, StepExecutionListener{
	
	@Autowired
	BdPointManageMapper bdPointManageMapper;

	@Override
	public void beforeStep(StepExecution stepExecution) {
		log.info("**beforeStep**");
	}

	@Override
	public RepeatStatus execute(StepContribution contribution, ChunkContext chunkContext) throws Exception {
		log.info("RepeatStatus");
		List<pointVO> pointList = bdPointManageMapper.selectHavePointList();
		if(pointList == null) {
			log.info("**선택된 포인트 리스트 없음**");
		}else {
			log.info("**선택된 포인트 리스트 있음**");
		}
		return RepeatStatus.FINISHED;
	}
	
	@Override
	public ExitStatus afterStep(StepExecution stepExecution) {
		log.info("**afterStep**");
		
		return ExitStatus.COMPLETED;
	}

}
